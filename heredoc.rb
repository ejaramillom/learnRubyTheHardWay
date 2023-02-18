require 'html_safe'

test = "thing<div>"
js_htmlsafe = <<-JS.html_safe 
#{test} 
JS 
js_sanitize = <<-JS
sanitize(#{test}) 
JS

puts js_sanitize, js_htmlsafe