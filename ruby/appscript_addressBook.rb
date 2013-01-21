require 'rubygems'
require 'appscript'

include Appscript

ab = app("Address Book")
myname = ab.people[its.emails.value.contains('antoine.logean@innoq.com')].name.get
p myname
all = ab.people.get
p all.size
me = ab.people['Antoine Logean'].get
p me.first_name.get
