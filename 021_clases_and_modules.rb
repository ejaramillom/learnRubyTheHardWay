class X < y
"Make a class named X that is-a Y."
class X: def initialize(J)
"class X has-a initialize that takes a J parameter."
class X: def M(J)
"class X has-a function named M that takes a J parameter."
foo = X.new()
"Set foo to an instance of class X."
foo.M(J)
"From foo, get the M function, and call it with parameter J."
foo.K = Q
"From foo, get the K attribute, and set it to Q."