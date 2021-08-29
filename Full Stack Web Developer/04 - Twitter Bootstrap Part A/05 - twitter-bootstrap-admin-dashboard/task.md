1. You need to implement a page like this:

 <div id="media-container-image-Task - Admin Dashboard (Top Part of Page)">
     <div>Task - Admin Dashboard (Top Part of Page)</div>
     <img src="./images/task-for-admin-dashboard.jpg"
         alt="Task - Admin Dashboard (Top Part of Page)" title="Task - Admin Dashboard (Top Part of Page)" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
 <div id="media-container-image-Task - Admin Dashboard (Bottom Part of Page)">
     <div>Task - Admin Dashboard (Bottom Part of Page)</div>
     <img src="./images/task-for-admin-dashboard-bottom-part-of-page.jpg"
         alt="Task - Admin Dashboard (Bottom Part of Page)" title="Task - Admin Dashboard (Bottom Part of Page)" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
 
2. Things you need to take care of:

    1. You need to use the font family `Anonymous Pro`. Look at the Google Fonts for that.
    
    1. The sidebar
    
        1. Should not extend its height to be equal to the maximum height available.

        1. Should have transparent background color.

        1. Should have a color `#eee` border, solid and 1px all around it.

        1. Its border radius needs to be 2px.

        1. Its position should be fixed even if we scroll the main content area.

        1. The position should be left 10px and top 70px;
        
    1. The dashboard area should be composed of 300x300 image placeholders.
    
*Note:* If you want to generate such placeholders, visit the [https://placehold.it](https://placehold.it) and learn how you can 
generate one. For example, you can visit the [https://placehold.it/450x450](https://placehold.it/450x450) and you will get an
image placeholder with the requested, 450px x 450px dimensions. You can right click and select `Save Image` in order to save that
as an image file in your computer, for later use in your site.
    
3. When the page is displayed on extra small devices, only 1 information container per row should be displayed:
    
 <div id="media-container-image-1 Information Container per row on Extra Small Devices">
  <div>1 Information Container per row on Extra Small Devices</div>
  <img src="./images/task-on-extra-small-devices.jpg"
     alt="1 Information Container per row on Extra Small Devices" title="1 Information Container per row on Extra Small Devices" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
    
4. When the page is displayed on small devices, 2 information containers per row should be displayed:
    
 <div id="media-container-image-2 Information Containers per row on Small Devices">
  <div>2 Information Containers per row on Small Devices</div>
  <img src="./images/task-on-small-devices.jpg"
     alt="2 Information Containers per row on Small Devices" title="2 Information Containers per row on Small Devices" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
    
5. When the page is displayed on medium and large devices, 3 information containers per row should be displayed:
    
 <div id="media-container-image-3 Information Containers per row on Medium and Large Devices">
  <div>3 Information Containers per row on Medium and Large Devices</div>
  <img src="./images/task-on-medium-and-large-devices.jpg"
      alt="3 Information Containers per row on Medium and Large Devices" title="3 Information Containers per row on Medium and Large Devices" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
    
6. Otherwise, the exercise is similar to the work described in the chapter.
           
          
**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.
