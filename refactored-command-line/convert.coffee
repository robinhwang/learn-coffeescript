fs = require 'fs'
owl2 = fs.readFileSync 'owl2.txt', 'utf-8'
wordlist = owl2.match /^(\w+)/mg
fileContents = """
  root = typeof exports === "undefined" ? window : exports;
  root.owl2 = ['#{wordlist.join "', \n'"}']
"""
fs.writeFile 'owl2.js', fileContents
