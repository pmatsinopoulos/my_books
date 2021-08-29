You need to implement a page in which user picks up one of two favourites cities. In fact:

1. When the page loads, it has the button to open the modal and an image placeholder, like this:
![./images/Task - Page with Image Placeholder and Button to Open Modal](./images/task-modals-page-with-image-placeholder.jpg)
2. When the user clicks on the button to open modal, the modal should appear as follows:
![./images/Task - Modal with 2 Cities to Choose From](./images/task-modals-modal-with-two-cities-to-choose-from.jpg)
3. User should be able to click one of the images. When clicked, the modal should close and the image selected should be displayed on the main page
in the place of the placeholder.
4. Watch the following video to see the page in action:
<div id="media-title-video-task-modals-choosing-favourite-city.mp4">Task - Page with Modal, Choosing Favourite City</div>
<a href="https://player.vimeo.com/video/194366934"></a>          
          
5. Here are some hints to help you finish your task:
    1. You might want to have a custom CSS file. This will need to style the images inside the modal, as well as the central image on the main page.
    2. You will need a custom JavaScript file. Its responsibility will be to:
        1. Respond to the click on any of the two images in the modal dialog.
        2. The click handler on the images need to
            * close the modal
            * replace the `src` of the central image with the `src` attribute of the clicked image.

**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.
