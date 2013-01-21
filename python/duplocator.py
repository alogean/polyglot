# Duplocator finds duplicate files and moves them to another directory.
# When two matching files are found the newest one is moved.
# Last modified on June 8, 2007 by John Hoogstrate

import os
import stat
import md5
import shutil
import sys
from time import gmtime, strftime


def main(argv=None):

	if argv is None:
		argv = sys.argv

	if argv is None or len(argv) <= 1:
		print "Error: no path provided"
		return 2
	else:
		path = argv[1]
		
	if os.path.isdir(path):
		duplicates = findDuplicates(path)
		moveDuplicates(duplicates)
	else:
		print "Error:", path, "is not a directory"
		return 2

def readfile(filename):
	"""Read a file and return MD5 hash"""
	
	f = file(filename,'rb');
	#print "\nReading %s \n" % f.name;
	m = md5.new();
	readBytes = 1024; # read 1024 bytes per time
	totalBytes = 0;
	while (readBytes):
		readString = f.read(readBytes);
		m.update(readString);
		readBytes = len(readString);
		totalBytes+=readBytes;
	f.close();
	
	return m.hexdigest()


def walktree (top = ".", depthfirst = True):
    """Returns a list of directories and subdirectories for a specified path"""
    
    names = os.listdir(top)
    if not depthfirst:
        yield top, names
    for name in names:
        try:
            st = os.lstat(os.path.join(top, name))
        except os.error:
            continue
        if stat.S_ISDIR(st.st_mode):
            for (newtop, children) in walktree (os.path.join(top, name), depthfirst):
            	#print 'Scanning ', newtop
                yield newtop, children
    if depthfirst:
        yield top, names

def findDuplicates(path):
	"""Identifies files as duplicates by comparing size and checksum"""
	sizes = dict()
	hashes = dict()
	duplicates = []
	
	for (basepath, children) in walktree(path,False):

		for child in children:
			filepath = os.path.join(basepath, child)
			if os.path.isfile(filepath):
				
				filesize = os.path.getsize(filepath)
			
				if sizes.get(filesize):
					hash = readfile(filepath)
					print "file:", filepath, " size:", filesize, " file2:", sizes.get(filesize), " hash:", hash
					if hashes.get(hash):
						
						print "duplicates:", hashes[hash], "and", filepath					
						
						#move newest file to list of duplicates
						if os.path.getmtime(filepath) > os.path.getmtime(hashes[hash]):
							duplicates.append(filepath)	
						else:
							duplicates.append(hashes[hash])		
					
					else:
						hashes[hash] = filepath
				else:
					sizes[filesize] = filepath
				
	return duplicates

def moveDuplicates(duplicates):
	"""Moves found duplicates to another directory and writes to log file"""
	
	duplicatedir = './duplicates'
	logfile = 'duplocator.log';
	
	if not os.path.isdir(duplicatedir):
		os.mkdir(duplicatedir)
		
	for file in duplicates:
	
		if os.path.isfile(file):
		
			try:
				f = open(logfile, 'a')
				shutil.move(file, duplicatedir)
				print "moved", file
				f.write(strftime("%a, %d %b %Y %H:%M:%S +0000", gmtime()) + ' moved file from ' + file + '\n')
				f.close()
			except IOError:
				print "error moving ", file
				
				
if __name__ == "__main__":
	sys.exit(main())