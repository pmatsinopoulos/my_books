### Task A

You need to use the knowledge that you have acquired in this chapter in order to build a Ruby program that is split in
two. A client and a server. The server needs to expose a front object that would work as a factory for other objects.
The front object, would respond to a single method `#build(<object to build>)`. This method would take as input one of the
following string values:

1. `encryptor`
1. `base64`
1. `compressor`

It would return back to the client an object that would be able to carry out some basic string operation.

1. If `encryptor` is given, the client would be given back an object at hand that would respond to the method `#encrypt(<string to encrypt>)`.
This method would return the input string to an encrypted form. The encryption can be anything that you like. Also, the same
object would respond to the method `#decrypt(<string to decrypt>)`. This method would return back the clear string of the encrypted version
given as input argument.
2. If `base64` is given, the client should then have an object at hand that would respond to the methods `#encode(<string to encode>)` and
`#decode(<string to decode>)`. The first method would return back the string given but in its Base64 strict encoded version. The second
method would return back the string given but in its Base64 strict decoded version ([see here for a help](https://ruby-doc.org/stdlib-2.1.3/libdoc/base64/rdoc/Base64.html)).
3. If `compressor` is given, the client gets back an object that exposes two methods again. The first method is `#compress(<string to compress>)` and
returns back a compressed version of the input string given. The second method is `#uncompress(<string to uncompress>)`, which takes as input a
compressed version of a string and returns back is uncompressed version. You can choose any library to compress/uncompress, but we are suggesting you using
[ZLib](https://ruby-doc.org/stdlib-2.1.3/libdoc/zlib/rdoc/Zlib.html).
 
Below, you can see an indicative run of the client using these server objects:

``` bash
task-a > $ ruby client.rb 'I Love Computer Programming with Tech Career Booster. Great content and fantastic Mentors'
Initial string is: I Love Computer Programming with Tech Career Booster. Great content and fantastic Mentors
Encrypted: J!Mpwf!Dpnqvufs!Qsphsbnnjoh!xjui!Ufdi!Dbsffs!Cpptufs/!Hsfbu!dpoufou!boe!gboubtujd!Nfoupst
Decrypted: I Love Computer Programming with Tech Career Booster. Great content and fantastic Mentors
Base64 encoded: SSBMb3ZlIENvbXB1dGVyIFByb2dyYW1taW5nIHdpdGggVGVjaCBDYXJlZXIgQm9vc3Rlci4gR3JlYXQgY29udGVudCBhbmQgZmFudGFzdGljIE1lbnRvcnM=
Base64 decoded: I Love Computer Programming with Tech Career Booster. Great content and fantastic Mentors
Compressed Size: 87
Uncompressed Size: 89
task-a > $
```

Note that the string to work on, is given as input run-time argument on the command line.

In this version of the code, you need make sure that client code is becoming aware of the classes of the different objects and the execution of the
string manipulation methods take place in the client memory and process space.

**Important:** Upload your work on your Github account so that you mentor can evaluate it online.

### Task B

This should the same Ruby application like the one in Task A, but the client does not need to be aware of the classes that implement
the different objects. The execution of the string manipulation methods should take place in the server memory and process space.

**Important:** Upload your work on your Github account so that you mentor can evaluate it online.
