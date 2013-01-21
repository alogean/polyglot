require 'rubygems'
require 'classifier'

classifier = Classifier::Bayes.new('prive', 'prof')
classifier.train_prive 'hallo, les extraterrestres'
classifier.train_prof 'A quelle distance de votre planête natale sommess nous?'
classifier.classify 'que le monde est petit'

