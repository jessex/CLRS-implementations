# CLRS Implementations

This is a collection of implementations, in various languages, of many of the algorithms from [Introduction to Algorithms](http://mitpress.mit.edu/catalog/item/default.asp?ttype=2&tid=11866), more popularly known as *CLRS*, after its four authors: Cormen, Leiserson, Rivest and Stein. Specifically, the third edition of the text is being utilized.

## Motivation

The purpose of creating this collection of algorithm implementations is mostly to continue practicing and learning various languages. The best way to learn a new programming language is to get one's hands (finger tips?) dirty with some actual coding, and implementing the CLRS algorithms has the added benefit of helping to hone my knowledge of theoretical computer science.

As such, please do not hate me if I butcher your favorite language which I am just now learning (such as Scheme). But if I *do* create a terrible implementation, feel free to slap me in the back of the head.

## Languages

The following is a list of the languages to be found in this collection:

* Python
* Ruby
* Scheme (*planned*)
* Haskell (*planned*)
* Scala (*planned*)

## Structure

The collection is split by language: Python implementations are in the `python/` directory, Ruby implementations are in the `ruby/` directory, etc. Within each directory, the various algorithms are stored in distinct files, which are named based upon the algorithm implemented within and kept in line with the naming presented in CLRS, but prepended with a four-digit formatted prefix corresponding to the page number on which the algorithm is provided in order to create an ordering which parallels that of appearance in the text. Additionally, the implementation files are named with the languages' conventions in mind. 

For example, the Ruby implementation of the `FIND-MAXIMUM-SUBARRAY` algorithm on page 72 would be in a file named `0072_find_maximum_subarray.rb`, while the Python implementation would be found within `0072findmaximumsubarray.py`. 

Each file will include a brief commented header containing algorithm metadata, including the page and chapter in which it first appears in the text, its time complexity expressed in Big-O notation and anything else of note.

Any code that is to be utilized by different algorithms will be stored in a sub-directory which is generally named by the category of algorithm that is using it. For instance, a custom `Node` data structure to be used in various graph algorithms for the Python implementations might be found in `python/graph/node.py`. 
  
*Note*: Because of Python import rules, the standard `import X` or `from X import *` statements will not work with these file names as you will receive a `SyntaxError: invalid token` due to the numerical prefix. As such, to import, say `0018insertionsort.py`, one must either a) use the statement `x = __import__('0018insertionsort')`, which places the module within the *x* namespace or b) change the file name.

## Running the Code

The infrastructure for running the implementations is not intended to be rigorous. There are currently no plans for unit tests, or any sort of bootstrap code which would allow one to quickly run an algorithm against sample data. Typically, I will be verifying and tinkering with the algorithms with heavy use of an REPL, where available. 

## License

There is none. Feel free to do whatever you like with any code that is found here. If you *absolutely* desire to provide some sort of credit, reference this repository or, better yet, reference the CLRS text. 

