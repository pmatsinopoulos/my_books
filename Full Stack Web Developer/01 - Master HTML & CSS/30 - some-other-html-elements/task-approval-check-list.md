1. Make sure that the student implements that web page requested with the requirements listed in the task description.
2. Here is an example implementation:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Quotes from Wikipedia</title>
    <link href='https://fonts.googleapis.com/css?family=Comfortaa:400,300,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="stylesheets/task.css" type="text/css">
  </head>

  <body>
    <main>
      <section id="ruby">
        <h3>Ruby</h3>
        <blockquote cite="https://en.wikipedia.org/wiki/Ruby_(programming_language)">
          Ruby is a dynamic, reflective, object-oriented, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan.
        </blockquote>
        <p>
          This is an example source code from this language:
        </p>
        <pre>
class Person
  attr_reader :name, :age
  def initialize(name, age)
    @name, @age = name, age
  end
  def <=>(person) # the comparison operator for sorting
    age <=> person.age
  end
  def to_s
    "#{name} (#{age})"
  end
end
        </pre>
        <p>
          Here, you can see the whole reference from Wikipedia:
        </p>
        <iframe src="https://en.wikipedia.org/wiki/Ruby_(programming_language)"></iframe>
      </section>

      <section id="java">
        <h3>Java</h3>
        <blockquote cite="https://en.wikipedia.org/wiki/Java_(programming_language)">
          Java is a general-purpose computer programming language that is concurrent, class-based, object-oriented,[12] and specifically designed to have as few implementation
          dependencies as possible. It is intended to let application developers "write once, run anywhere" (WORA),[13] meaning that compiled Java code can run on all platforms
          that support Java without the need for recompilation.[14] Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless
          of computer architecture. As of 2015, Java is one of the most popular programming languages in use,[15][16][17][18] particularly for client-server web applications,
          with a reported 9 million developers.[citation needed] Java was originally developed by James Gosling at Sun Microsystems (which has since been acquired by Oracle
          Corporation) and released in 1995 as a core component of Sun Microsystems' Java platform. The language derives much of its syntax from C and C++, but it has fewer
          low-level facilities than either of them.
        </blockquote>
        <p>
          This is an example source code from this language:
        </p>
        <pre>
class HelloWorldApp {
    public static void main(String[] args) {
        System.out.println("Hello World!"); // Prints the string to the console.
    }
}
        </pre>
        <p>
          Here, you can see the whole reference from Wikipedia:
        </p>
        <iframe src="https://en.wikipedia.org/wiki/Java_(programming_language)"></iframe>
      </section>

      <div class="clearfix"></div>
    </main>
  </body>
</html>
```
and the corresponding CSS:
``` css
* {
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

html {
    font-size: 62.5%;
}

body {
    font-size: 1.6rem;
    margin-top: 2.0rem;
    margin-bottom: 2.0rem;
}

html,
input,
textarea,
select,
option {
    font-family: Comfortaa, Verdana, Arial, sans-serif;
}

input[type=submit] {
    -webkit-appearance: button;
    -moz-appearance: button;
    -ms-appearance: button;
    -o-appearance: button;
    appearance: button;
}

p {
    margin-bottom: 10px;
}

main {
    width: 80%;
    margin: 0 auto;
}

section {
    width: 50%;
    float: left;
    padding: 10px;
}

.clearfix {
    clear: both;
}

section h3 {
    text-align: center;
    margin-bottom: 20px;
}

section blockquote {
    padding-left: 5px;
    border-left: 5px solid gray;
    margin-bottom: 20px;
}

section pre {
    width: 100%;
    overflow-x: auto;
    background-color: lightblue;
    border-radius: 5px;
    padding: 20px;
    margin-bottom: 10px;
}

section iframe {
    height: 300px;
    width: 100%;
}
```

