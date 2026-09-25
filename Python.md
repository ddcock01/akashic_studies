![[Python Distilled.pdf]]

## The Interpreter
All Python language is executed by an interpreter; a text-based application initiated by typing python in a command shell
Type the specific version of python if there are multiple versions installed:
	Python2
	Python3
Found and ran in
	an IDE
	browser
	terminal window
Common to use #! to specify the interpreter on the first line of a program
## Primitives, Variables, and Expressions
![[Pasted image 20260924181342.png]]
### Primitives
	integers = # int e.g. 42
	floats = # float e.g. 4.2
	strings = # str 'forty-two'
### Variables
	Refers to a value which represents an object of some sort
	- Variables must start with a letter
	- variables can not have spaces
	- Variables can not be punctuation
		e.g. x = 42
		think algebra

HW: [Watch this](https://www.youtube.com/watch?v=fWjsdhR3z3c)
Python source files are UTF-8-encoeded text files that normally have a .py suffix

![[Pasted image 20260924171252.png]]

![[Pasted image 20260924164142.png]]![[Pasted image 20260924164326.png]]

![[Pasted image 20260924164753.png]]

The result of a comparison is *Boolean Value* True or False.

![[Pasted image 20260924165243.png]]

## Conditionals and Control Flow
If and Else statements are used for looping and conditional code execution.
	e.g. if a < b:
		print('computer says yes')
		else:
			print ('computer says No')
## (Text) Strings
To define a string enclose in single, double, triple quotes; strings are text in code.
- The same quotes you used in the beginning must be the same you used at the end.
- If the opening of quotations is prefaced with an f, the expressions within the string are evaluated.
- stored as sequences of Unicode characters indexed by integers starting at 0

![[Pasted image 20260924171830.png]]
- contents of a string is never numerical data
	- use a function to convert string into numeric vale
		- int() or float()
- Non-string values can be converted into a string representation by using:
	- str() e.g. s= 'The value of x is' + str(x)
		- produces the same output that you get when the print() is used
	- repr()
		- produces a string that you type into a program to exactly represent the value of an object
		- use when debugging to produce output because it shows you more information about a value and its type
	- format()
		- converts a single value to a string with a specific formatting applied.
- String Concatenation = joining to strings together
## File Input & Output
- open file and reads its contents line by line as text strings use this program
with open ('') as file:
	for line in file:
		print (line, end='')
## Lists
Create a list be enclosing values in square brackets
- indexed by integers starting with 0
	- utilize indexing operator to access and modify individual items of the list
- Use append() to add items to the end of the list
- use insert (integer, object) to place object in a specific place in the list
- You can create an empty list in 2 ways
	1. names = []
	2. names = list ()
-  Program pcost.py shows how to read data into a list and performs a simple calculation





