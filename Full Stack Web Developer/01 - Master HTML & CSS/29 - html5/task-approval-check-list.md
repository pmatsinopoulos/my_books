1. Make sure that the student implements all the requirements of the task.
2. Here is a sample implementation:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>List of Videos and Music</title>
    <link href='https://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'/>
    <link href="stylesheets/task.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
    <nav>
      <ul class="pull-left">
        <li><a href="#">Home</a></li>
      </ul>

      <ul class="pull-right">
        <li><a href="#videos">Videos</a></li>
        <li><a href="#music">Music</a></li>
        <li><a href="#">Pricing</a></li>
        <li><a href="#">Sign Up</a></li>
        <li><a href="#">Sign In</a></li>
      </ul>
    </nav>

    <header>
      <h2>Enjoy our Videos and Music</h2>
    </header>

    <section id="videos">
      <h3 class="section-header">Videos</h3>

      <ul>
        <li>
          <video controls="controls" preload="metadata">
            <source src="http://tech-career-booster-courses.s3.amazonaws.com/01-full-stack-web-developer/sections/01-html-and-css/chapters/29-html5/assets/videos/gregor-salto-para-voce-feat-curio-capoeira.mp4"/>
            Your browser does not support the video tag
          </video> <strong>Gregor Salto - Para Voce Feat. Curio Capoeira | Official Video | Capoeira Music Video</strong>
          Capoeira (/ˌkæpuːˈɛərə/; Portuguese pronunciation: [kapuˈejɾɐ]) is a Brazilian martial art that combines elements of dance,[1][2][3] acrobatics[4] and music,
          and is sometimes referred to as a game.[5][6] It was developed in Brazil mainly by West African descendants with native Brazilian influences, probably beginning
          in the 16th century. It is known for quick and complex moves, using mainly power, speed, and leverage for a wide variety of kicks, spins, and highly mobile techniques.
          The most widely accepted origin of the word capoeira comes from the Tupi words ka'a ("jungle") e pûer ("it was"), referring to the areas of low vegetation in the Brazilian
          interior where fugitive slaves would hide. Practitioners of the art are called capoeiristas.
        </li>

        <li>
          <video controls="controls" preload="metadata">
            <source src="http://tech-career-booster-courses.s3.amazonaws.com/01-full-stack-web-developer/sections/01-html-and-css/chapters/29-html5/assets/videos/forever-tango-a-evaristo-carriego.mp4"/>
            Your browser does not support the video tag
          </video> <strong>Forever Tango - A Evaristo Carriego</strong>
          Tango is a dance that has influences from European and African culture.[5] Dances from the candombe ceremonies of former slave peoples helped shape
          the modern day Tango. The dance originated in lower-class districts of Buenos Aires and Montevideo. The music derived from the fusion of various forms of music from Europe.[6]
          The word "tango" seems to have first been used in connection with the dance in the 1890s, possibly related to the Latin word "tangere" but more likely related to the African
          slave word "tango" (drum or dance place).
        </li>

        <li>
          <video controls="controls" preload="metadata">
            <source src="http://tech-career-booster-courses.s3.amazonaws.com/01-full-stack-web-developer/sections/01-html-and-css/chapters/29-html5/assets/videos/tchaikovsky-swan-lake-four-little-swans.mp4"/>
            Your browser does not support the video tag
          </video> <strong>Tchaikovsky - Swan Lake - four little swans</strong>
          Pyotr Ilyich Tchaikovsky (/ˈpjɔːtər iːˈljiːtʃ tʃaɪˈkɒfski/;[1] Russian: Пётр Ильи́ч Чайко́вский;[a 1] tr. Pyotr Ilyich Chaykovsky; 25 April/7 May 1840 – 25 October/6 November 1893),
          [a 2] often anglicized as Peter Ilyich Tchaikovsky /ˈpiːtər .../, was a Russian composer of the late-Romantic period, some of whose works are among the most popular music in the
          classical repertoire. He was the first Russian composer whose music made a lasting impression internationally, bolstered by his appearances as a guest conductor in Europe and
          the United States. Tchaikovsky was honored in 1884 by Emperor Alexander III, and awarded a lifetime pension.
        </li>

        <li>
          <video controls="controls" preload="metadata">
            <source src="http://tech-career-booster-courses.s3.amazonaws.com/01-full-stack-web-developer/sections/01-html-and-css/chapters/29-html5/assets/videos/carlos-santana.mp4"/>
            Your browser does not support the video tag
          </video> <strong>Carlos Santana -- Black Magic Woman [[ Official Live Video ]] HQ</strong>
          Carlos Santana About this sound audio (help·info) (born July 20, 1947) is a Mexican and American musician who first became famous in the late 1960s and early 1970s with his band,
          Santana, which pioneered a fusion of rock and Latin American music. The band's sound featured his melodic, blues-based guitar lines set against Latin and African rhythms featuring
          percussion instruments such as timbales and congas not generally heard in rock music. Santana continued to work in these forms over the following decades. He experienced a
          resurgence of popularity and critical acclaim in the late 1990s. In 2003 Rolling Stone magazine listed Santana at number 20[2] on their list of the 100 Greatest Guitarists of
          All Time.[3] He has won 10 Grammy Awards and three Latin Grammy Awards.[4]
        </li>

        <li>
          <video controls="controls" preload="metadata">
            <source src="http://tech-career-booster-courses.s3.amazonaws.com/01-full-stack-web-developer/sections/01-html-and-css/chapters/29-html5/assets/videos/rachmaninov-rhapsody-on-a-theme-of-paganini_Op-43-variation-18-andantecant.mp4"/>
            Your browser does not support the video tag
          </video> <strong>Sokolov - Rachmaninoff - Concerto N 3</strong>
          Sergei Vasilievich Rachmaninoff (Russian: Серге́й Васи́льевич Рахма́нинов;[1] Russian pronunciation: [sʲɪrˈɡʲej rɐxˈmanʲɪnəf]; 1 April [O.S. 20 March] 1873 – 28 March 1943),[2] was
          a Russian composer, pianist, and conductor.[3] Rachmaninoff is widely considered one of the finest pianists of all time and, as a composer, one of the last great representatives of
          Romanticism in Russian classical music.[4]
          Early influences of Tchaikovsky, Rimsky-Korsakov, and other Russian composers gave way to a personal style notable for its song-like melodicism, expressiveness and his use
          of rich orchestral colors.[5] The piano is featured prominently in Rachmaninoff's compositional output, and through his own skills as a performer he explored the expressive
          possibilities of the instrument.
        </li>
      </ul>
    </section>

    <section id="music">
      <h3 class="section-header">Music</h3>

      <ul>
        <li>
          <audio controls="controls" preload="metadata">
            <source src="http://tech-career-booster-courses.s3.amazonaws.com/01-full-stack-web-developer/sections/01-html-and-css/chapters/29-html5/assets/audio/We Are One (Ole Ola) [The Official 2014 FIFA World Cup Song] (Olodum Mix).mp3"/>
            Your browser does not support the video tag
          </audio> <strong>We Are One (Ole Ola) [The Official 2014 FIFA World Cup Song] (Olodum Mix)</strong>
        </li>

        <li>
          <audio controls="controls" preload="metadata">
            <source src="http://tech-career-booster-courses.s3.amazonaws.com/01-full-stack-web-developer/sections/01-html-and-css/chapters/29-html5/assets/audio/shakira-waka-waka-the-official-2010-fifa-world-cup.mp3"/>
            Your browser does not support the video tag
          </audio> <strong>Shakira - Waka Waka (This Time for Africa) (The Official 2010 FIFA World Cup Song)</strong>
        </li>

        <li>
          <audio controls="controls" preload="metadata">
            <source src="http://tech-career-booster-courses.s3.amazonaws.com/01-full-stack-web-developer/sections/01-html-and-css/chapters/29-html5/assets/audio/Shakira - La La La (Brazil 2014) ft. Carlinhos Brown.mp3"/>
            Your browser does not support the video tag
          </audio> <strong>Shakira - La La La (Brazil 2014) ft. Carlinhos Brown</strong>
        </li>

        <li>
          <audio controls="controls" preload="metadata">
            <source src="http://tech-career-booster-courses.s3.amazonaws.com/01-full-stack-web-developer/sections/01-html-and-css/chapters/29-html5/assets/audio/Shakira - Loca (Spanish Version) ft. El Cata.mp3"/>
            Your browser does not support the video tag
          </audio> <strong>Shakira - Loca (Spanish Version) ft. El Cata</strong>
        </li>

        <li>
          <audio controls="controls" preload="metadata">
            <source src="http://tech-career-booster-courses.s3.amazonaws.com/01-full-stack-web-developer/sections/01-html-and-css/chapters/29-html5/assets/audio/Jennifer Lopez - On The Floor ft. Pitbull.mp3"/>
            Your browser does not support the video tag
          </audio> <strong>Jennifer Lopez - On The Floor ft. Pitbull</strong>
        </li>
      </ul>
    </section>

    <aside>
      <h3>Contact Us</h3>
      <form>
        <div class="input-group">
          <label for="name">Name *:</label>
          <input type="text" id="name" placeholder="Your Name" autofocus="autofocus" required="required"/>
        </div>
        <div class="input-group">
          <label for="email">Email *:</label>
          <input type="email" id="email" placeholder="Your Email" required="required"/>
        </div>
        <div class="input-group last">
          <label for="message">Message *:</label>
          <textarea id="message" placeholder="Your Message" rows="3" required="required"></textarea>
        </div>
        <div class="input-group text-center">
          <input type="submit" value="Send">
        </div>
      </form>
    </aside>

    <footer>
      <ul>
        <li><a href="#">About Us</a></li>
        <li><a href="#">Work</a></li>
        <li><a href="#">Newsletter</a></li>
      </ul>
    </footer>
  </body>
</html>
```
and the CSS:
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
    margin-top: 4rem;
    margin-bottom: 12.8rem;
}

html, input, textarea,
input[type="submit"] {
    font-family: "Droid Sans", Verdana, Arial, sans-serif;
}

input[type="submit"] {
    -webkit-appearance: button;
    -moz-appearance: button;
    -ms-appearance: button;
    -o-appearance: button;
    appearance: button;
}

input[type="submit"] {
    padding: 5px 10px;
    background-color: White;
    color: DarkGreen;
}

input[type="submit"]:hover {
    background-color: DarkGreen;
    color: White;
    cursor: pointer;
}

/* utility classes */
.pull-left {
    float: left;
}

.pull-right {
    float: right;
}

.clearfix {
    clear: both;
}

.text-center {
    text-align: center;
}

/* nav bar */
nav {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 3.2rem;
    background-color: darkgreen;
    z-index: 1;
}

nav ul,
footer ul {
    list-style-type: none;
}

nav ul li,
footer ul li {
    display: inline-block;
    text-align: center;
    padding: 5px 10px;
    width: 100px;
}

nav ul a {
    text-decoration: none;
    color: White;
}

nav ul a:hover {
    color: #7CFC00;
}

/* header */
h2 {
    text-align: center;
    margin-bottom: 10px;
}

/* sections */

section {
    width: 60%;
    margin: 0 auto;
    /* the next 2 tricks are done in order to be able to scroll to the correct start of section when selecting from menu */
    padding-top: 3.3rem; /* which is the height of the top navigation bar. Actually it is a little bit higher than the height of the nav bar.*/
    margin-top: -3.3rem; /* bring top edge down. Equal to +padding-top+ above.  */
}

section ul {
    list-style-type: none;
}

section ul li {
    margin-bottom: 20px;
    padding-bottom: 20px;
    border-bottom: 1px solid darkblue;
}

section#videos ul li {
    min-height: 140px;
}

section ul li:last-of-type {
    border-bottom: none;
}

.section-header {
    background-color: DarkGreen;
    color: White;
    font-weight: 400;
    letter-spacing: 0.5rem;
    padding: 5px 10px;
    margin-bottom: 10px;
    border-radius: 10px;
}

video, audio {
    float: left;
    margin: 0 10px 0 0;
}

#videos ul li {
    min-height: 180px;
}

video {
    width: 320px;
    height: 130px;
}

audio {
    vertical-align: top;
}

/* aside */
aside {
    position: fixed;
    top: 15%;
    right: 1.0rem;
    width: 18%;
    padding: 5px 10px;
}

aside h3 {
    margin-bottom: 10px;
}

aside label {
    display: inline-block;
    width: 72px;
    vertical-align: top;
    font-size: 1.3rem;
}

aside input,
aside label {
    margin-bottom: 5px;
}

aside .input-group.last {
    margin-bottom: 10px;
}

/* footer */

footer {
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 6.4rem;
    background-color: #006470;
}

footer ul {
    width: 80%;
    margin: 0 auto;
    text-align:center;
    padding-top: 1.8rem;
}

footer a {
    text-decoration: none;
    color: White;
}

footer a:hover {
    color: #7CFC00;
}
```
