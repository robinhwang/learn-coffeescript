fs = require 'fs'
owl2 = fs.readFileSync 'OWL2.txt', 'utf-8'
wordlist = owl2.match /^(\w+)/mg
fileContents = """
  root = typeof exports === "undefined" ? window : exports;
  root.OWL2 = ['#{wordlist.join "', \n'"}']
"""
fs.writeFile 'OWL2.js', fileContents
