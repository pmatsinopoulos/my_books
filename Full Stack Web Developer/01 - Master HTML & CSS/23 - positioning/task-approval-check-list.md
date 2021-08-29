1. Make sure that student creates a site as close to the expected one as possible.
2. Here is an indicative approach:
    ``` html
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="stylesheets/main.css" type="text/css">
        <title>Task For Positioning</title>
      </head>

      <body>
        <div id="top"></div>

        <div id="top-nav-bar">
          <a href="#top">Top</a>
          <a href="#milos">Milos</a>
          <a href="#sarakiniko">Sarakiniko</a>
          <a href="#kleftiko">Kleftiko</a>
          <a href="#firiplaka">Firiplaka</a>
          <a href="#lagada">Lagada</a>
        </div>

        <div id="central" class="background-image">
          <div class="central-place">M I L O S</div>

          <div id="top-left" class="corner-image-container background-image">
            <span class="place left">Sarakiniko</span>
          </div>

          <div id="top-right" class="corner-image-container background-image">
            <span class="place right">Kleftiko</span>
          </div>

          <div id="bottom-right" class="corner-image-container background-image">
            <span class="place right">Firiplaka</span>
          </div>

          <div id="bottom-left" class="corner-image-container background-image">
            <span class="place left">Lagada</span>
          </div>
        </div>

        <div id="content">
          <p id="milos">
            <strong>Milos:</strong> Milos or Melos (/ˈmɛlɒsˌ -oʊsˌ ˈmiːlɒs, -loʊs/; Modern Greek: Μήλος [ˈmilos]; Ancient Greek: Μῆλος Melos) is a volcanic Greek island
            in the Aegean Sea, just north of the Sea of Crete. Milos is the southwesternmost island in the Cyclades group. The island is famous for the statue of Aphrodite
            (the "Venus de Milo", now in the Louvre), and also for statues of the Greek god Asclepius (now in the British Museum[2]) and the Poseidon and an archaic Apollo
            in Athens. The Municipality of Milos also includes the uninhabited offshore islands of Antimilos and Akradies. The combined land area is 160.147 square
            kilometres (61.833 sq mi) and the 2001 census population was 4,977 inhabitants.
          </p>

          <p id="sarakiniko">
            <strong>Sarakiniko:</strong> Sarakiniko is a beach on Milos Island, Greece. It is situated on the north shore of the island. The waves from the northwind brings greyish -
            white rocks that can have amazing shapes often compared to a moonscapeTemplate:Asf. The local people often refer to the scenic landscape of
            Sarakiniko as Lunar[citation needed]. The bone white beach derives from its unusual characteristics from volcanic rocks shaped by wind and wave.
            Sarakiniko is the most photographed landscape in the Aegean.
          </p>

          <p id="kleftiko">
            <strong>Kleftiko:</strong> Kleftiko or else “The Meteora Rocks of the Sea”, as it is usually called, constitutes a group of grey-white rocks of strange shapes and formations,
            with caves and cavities created by the wind and the sea in the passing of the centuries. In order to enjoy its crystal blue green waters and its unique
            formations you will have to approach by boat or by yacht. In old times Kleftiko was used as a refuge and a hide-out  for pirates and thus it was named after them.
          </p>

          <p id="firiplaka">
            <strong>Firiplaka:</strong> The beach of Firiplaka is a fairly large beach, cut in half by a large rock (plate) which has been detached from the mountain.
            The first part of the beach is the one where you will find the beach bar and sunbeds, probably the second song on your own or with a camper company that has
            reached the other side of the beach.
            The beach has shallow but clear waters combined with white sand. It is best to avoid days with southerly winds.
            Before or after that you can also visit the beach of Tsigrado which is right next to that of Firiplaka.
          </p>

          <p id="lagada">
            <strong>Lagada:</strong> Welcome to the captivating island of Milos and its greatest hotel, Lagada Beach Hotel. Right in front of Lagada Beach Hotel, you can experience raremoments of
            relaxation in a quiet and calm region pretty close tothe city center! The blue color of the Aegean and the green hues of hotel’s gardens combinedwith Miloscolors
            giveyou the opportunity to live a unique experience of accommodation.
          </p>
        </div>

      </body>

    </html>
    ```
    And the CSS:
    ``` css
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }

    body {
        margin-bottom: 1000px;
    }

    .background-image {
        background-repeat: no-repeat;
        background-attachment: scroll;
        background-position: center;
        background-size: 100% 100%;
    }

    #central {
        width: 600px;
        height: 400px;
        margin: 170px auto;
        position: relative;
        border: 1px solid darkblue;
        background-image: url("../images/milos-firopotamos.jpg");
    }

    .corner-image-container {
        width: 250px;
        height: 150px;
        position: absolute;
        z-index: -1;
    }

    #top-left {
        left: -200px;
        top: -100px;
        background-image: url("../images/sarakiniko-water.jpg");
    }

    #top-right {
        right: -200px;
        top: -100px;
        background-image: url("../images/kleftiko.jpg");
    }

    #bottom-right {
        right: -200px;
        bottom: -100px;
        background-image: url("../images/firiplaka.jpg");
    }

    #bottom-left {
        left: -200px;
        bottom: -100px;
        background-image: url("../images/lagada-hotel.jpg");
    }

    /* places */
    .place {
        position: absolute;
        bottom: 10px;
        background-color: darkblue;
        color: white;
        padding: 2px 4px;
        font-size: 14px;
        min-width: 85px;
        text-align: center;
    }

    .place.left {
        left: 0;
        bottom: 10px;
        border-radius: 0 10px 10px 0;
    }

    .place.right {
        right: 0;
        border-radius: 10px 0 0 10px;
    }

    .central-place {
        position: absolute;
        bottom: 10px;
        width: 100%;
        text-align: center;
        font-size: 28px;
        color: White;
        background-color: rgba(0, 0, 0, 0.5);
        padding: 10px 10px;
    }

    /* main content */

    #content {
        margin-left: 30px;
        margin-right: 30px;
        border-top: 1px solid #dcdcdc;
        padding-top: 30px;
    }

    p {
        font-size: 18px;
        padding-top: 38px;
        margin-top: -38px;
        margin-bottom: 10px;
    }

    /* Top Navigation Bar */
    #top {
        position: absolute;
        top: 0;
    }

    #top-nav-bar {
        position: fixed;
        top: 0;
        width: 100%;
        padding-top: 10px;
        padding-bottom: 10px;
        text-align: center;
        background-color: maroon;
        color: white;
        z-index: 1;
    }

    #top-nav-bar a {
        text-decoration: none;
        color: white;
        padding: 0 10px;
    }

    #top-nav-bar a:hover {
        color: yellow;
    }
    ```
3. Student needs to be able to upload his site on Netlify.
