#!/usr/bin/env ruby

require 'pp'

body_html = `haml body.haml`
index_tpl = File.read('index_tpl.html')
index_tpl['%%SLIDES%%'] = body_html
File.open('index.html','w') {|f| f.write(index_tpl)}
