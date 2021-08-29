1. You need to build an HTML page like this:
![./images/Task for Positioning](./images/task-positioning.jpg)
2. Here is a video that demonstrates how the page works:

<div id="media-title-video-How your task site should be functioning">How your task site should be functioning</div>
<a href="https://player.vimeo.com/video/194013729"></a>
          
3. There is a top navigation bar, which needs to be fixed and stay visible even if we scroll the content of the page.
4. The navigation bar has links inside the main content paragraphs.
5. The navigation links change color when we mouse over them.
6. The images that you will need are already inside the images folder of the chapter.
    1. milos-firopotagmos.jpg. This is for the central image.
    2. sarakiniko-water.jpg. This is for the top left image.
    3. kleftiko.jpg. This is for the top right image.
    4. firiplaka.jpg. This is for the bottom right image.
    5. lagada.jpg. This is for the bottom left image.
7. We give you here the text parts, so that you do not have to type them in:
    1. "Milos or Melos (/ˈmɛlɒsˌ -oʊsˌ ˈmiːlɒs, -loʊs/; Modern Greek: Μήλος [ˈmilos]; Ancient Greek: Μῆλος Melos) is a volcanic Greek island
    in the Aegean Sea, just north of the Sea of Crete. Milos is the southwesternmost island in the Cyclades group. The island is famous for the statue of Aphrodite
    (the "Venus de Milo", now in the Louvre), and also for statues of the Greek god Asclepius (now in the British Museum[2]) and the Poseidon and an archaic Apollo
    in Athens. The Municipality of Milos also includes the uninhabited offshore islands of Antimilos and Akradies. The combined land area is 160.147 square
    kilometres (61.833 sq mi) and the 2001 census population was 4,977 inhabitants."
    2. "Sarakiniko is a beach on Milos Island, Greece. It is situated on the north shore of the island. The waves from the northwind brings greyish -
    white rocks that can have amazing shapes often compared to a moonscapeTemplate:Asf. The local people often refer to the scenic landscape of
    Sarakiniko as Lunar[citation needed]. The bone white beach derives from its unusual characteristics from volcanic rocks shaped by wind and wave.
    Sarakiniko is the most photographed landscape in the Aegean."
    3. "Kleftiko or else “The Meteora Rocks of the Sea”, as it is usually called, constitutes a group of grey-white rocks of strange shapes and formations,
    with caves and cavities created by the wind and the sea in the passing of the centuries. In order to enjoy its crystal blue green waters and its unique
    formations you will have to approach by boat or by yacht. In old times Kleftiko was used as a refuge and a hide-out  for pirates and thus it was named after them."
    4. "Welcome to the captivating island of Milos and its greatest hotel, Lagada Beach Hotel. Right in front of Lagada Beach Hotel, you can experience raremoments of
    relaxation in a quiet and calm region pretty close tothe city center! The blue color of the Aegean and the green hues of hotel’s gardens combinedwith Miloscolors
    give you the opportunity to live a unique experience of accommodation."
    5. "The beach of Firiplaka is a fairly large beach, cut in half by a large rock (plate) which has been detached from the mountain.
    The first part of the beach is the one where you will find the beach bar and sunbeds, probably the second song on your own or with a camper company that has
    reached the other side of the beach. The beach has shallow but clear waters combined with white sand. It is best to avoid days with southerly winds.
    Before or after that you can also visit the beach of Tsigrado which is right next to that of Firiplaka."
8. We would also like to give you some hints in order to succeed with this task:
    * All images are background images to corresponding divs
    * The images at the corners should be placed relative to the central image.
    * The link "top", in the menu, requires the existence of a div like this:
    ``` html
    <div id="top"></div>
    ```
    exactly after the opening `body` element. This will also need to have the following CSS rule:
    ```
    #top {
        position: absolute;
        top: 0;
    }
    ```
    This is one trick that will allow the `Top` link to work.

    * Add the following rule to your CSS file:
    ```
    body {
        margin-bottom: 1000px;
    }
    ```
    This will give enough height to body so that the last links on the top nav bar can work and bring the
    corresponding bookmark on the top.
    * You will need to make sure that the image containers have reasonable sizes:
        * Central image should be 600px X 400px.
        * All image containers should be 250px x 150px.
    * The tags are all of equal size. You might want to use the property `min-width` for that.
    * Make sure that the top nav bar is not hidden by the content when we scroll down.
9. After you finish you task, deploy your site to Netlify.
