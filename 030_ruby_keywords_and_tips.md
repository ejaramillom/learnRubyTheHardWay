Rules for If-Statements
- Every if-statement must have an else.
- If this else should never run because it doesn't make sense, then you must use a die function in the else that prints out an error message and dies, just like we did in the last exercise. This will find many errors.
- Never nest if-statements more than two deep and always try to do them one deep.
- Treat if-statements like paragraphs, where each if-elsif-else grouping is like a set of sentences. Put blank lines before and after.
- Your Boolean tests should be simple. If they are complex, move their calculations to variables earlier in your function and use a good name for the variable.

Rules for Loops
- Use a while-loop only to loop forever, and that means probably never. This only applies to Ruby; other languages are different.
- Use a for-loop for all other kinds of looping, especially if there is a fixed or limited number of things to loop over.

Tips for Debugging
- Do not use a "debugger." A debugger is like doing a full-body scan on a sick person. You do not get any specific useful information, and you find a whole lot of information that doesn't help and is just confusing.
- The best way to debug a program is to use put to print out the values of variables at points in the program to see where they go wrong.
- Make sure parts of your programs work as you work on them. Do not write massive files of code before you try to run them. Code a little, run a little, fix a little.

The best way to work on a piece of software is in small chunks like this:

- On a sheet of paper or an index card, write a list of tasks you need to complete to finish the software. This is your to do list.
- Pick the easiest thing you can do from your list.
- Write out English comments in your source file as a guide for how you would accomplish this task in your code.
- Write some of the code under the English comments.
- Quickly run your script so see if that code worked.
- Keep working in a cycle of writing some code, running it to test it, and fixing it until it works.
- Cross this task off your list, then pick your next easiest task and repeat.

Keyword	Description	Example

- BEGIN	
Run this block when the script starts.	
BEGIN { puts "hi" }

- END	
Run this block when the script is done.	
END { puts "hi" }

- alias	
Create another name for a function.	
alias X Y

-and	
Logical and, but lower priority than &&.	
puts "Hello" and "Goodbye"

- begin	
Start a block, usually for exceptions.	
begin end

- break	
Break out of a loop right now.	
while true; break; end

- case	
Case style conditional, like an if.	
case X; when Y; else; end

- class	
Define a new class.	
class X; end

- def	
Define a new function.	
def X(); end

- defined?	
Is this class/function/etc. defined already?	
defined? Class == "constant"

- do	
Create a block that maybe takes a parameter.	
(0..5).each do |x| 
  puts x 
end

- else	
Else conditional.	
if X; else; end
- elsif	Else if conditional	
if X; elsif Y; else; end
- end	Ends blocks, functions, classes, everything.	
begin end # many others
- ensure	Run this code whether an exception happens or not.
begin ensure end
- for	For loop syntax. The .each syntax is preferred.	
for X in Y; end
- if	If conditional.	
if X; end
- in	In part of for-loops.	
for X in Y; end
- module	Define a new module.	
module X; end
- next	Skip to the next element of a .each iterator.	
(0..5).each {|y| next }
- not	Logical not. But use ! instead.	
not true == false
- or	Logical or.	
puts "Hello" or "Goodbye"
- redo	Rerun a code block exactly the same.	
(0..5).each {|i| redo if i > 2}
- rescue	Run this code if an exception happens.	
begin rescue X; end
- retry	In a rescue clause, says to try the block again.	(0..5).each {|i| retry if i > 2}
- return	Returns a value from a function. Mostly optional.	return X
- self	The current object, class, or module.	
defined? self == "self"
- super	The parent class of this class.	
super
- then	Can be used with if optionally.	
if true then puts "hi" end
- undef	Remove a function definition from a class.	
undef X
- unless	Inverse of if.	
unless false then puts "not" end
- until	Inverse of while, execute block as long as false.
until false; end
- when	Part of case conditionals.	
case X; when Y; else; end
- while	While loop.	
while true; end
- yield	Pause and transfer control to the code block.	
yield


Data types
Type	Description	Example
- true	True boolean value.	true or false == true
- false	False boolean value.	false and true == false
- nil	Represents "nothing" or "no value".	x = nil
- strings	Stores textual information.	x = "hello"
- numbers	Stores integers.	i = 100
- floats	Stores decimals.	i = 10.389
- arrays	Stores a list of things.	j = [1,2,3,4]
- hashes	Stores a key=value mapping of things.	e = {'x' => 1, 'y' => 2}

String escapes
Escape	Description
\\	Backslash
\'	Single-quote
\"	Double-quote
\a	Bell
\b	Backspace
\f	Formfeed
\n	Newline
\r	Carriage
\t	Tab
\v	Vertical tab

Double colon access

module SomeModule
    module InnerModule
        class MyClass
            CONSTANT = 4
        end
    end
end

You could access CONSTANT from outside the module as SomeModule::InnerModule::MyClass::CONSTANT.

attr_reader :tangerine

means :tangerine is a symbol, not a string or variable. Symbols are immutable, while variables are mutable

How can we turn a mutable thing into an immutable thing? Welcome to the #freeze method!
first_coffee = ["americano"].freeze

first_coffee[0] = "Espresso"

# => FrozenError (can't modify frozen Array: ["americano"])

Operators

Operator	Description	Example
+	Add	2 + 4 == 6
-	Subtract	2 - 4 == -2
*	Multiply	2 * 4 == 8
**	Power of	2 ** 4 == 16
/	Divide	2 / 4.0 == 0.5
%	Modulus	2 % 4 == 2
>	Greater than	4 > 4 == false
.	Dot access	"1".to_i == 1
::	Colon access	Module::Class
[]	List brackets	[1,2,3,4]
!	Not	!true == false
<	Less than	4 < 4 == false
>	Greater than	4 < 4 == false
>=	Greater than equal	4 >= 4 == true
<=	Less than equal	4 <= 4 == true
<=>	Comparison	4 <=> 4 == 0
==	Equal	4 == 4 == true
===	Equality	4 === 4 == true
!=	Not equal	4 != 4 == false
&&	Logical and (higher precedence)	true && false == false
||	Logical or (higher precedence)	true || false == true
..	Range inclusive	(0..3).to_a == [0, 1, 2, 3]
...	Range non-inclusive	(0...3).to_a == [0, 1, 2]
@	Object scope	@var ; @@classvar
@@	Class scope	@var ; @@classvar
$	Global scope	$stdin