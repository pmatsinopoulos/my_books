Write a JavaScript program that starts its execution 5 seconds after the page has loaded.
The program should open 10 different web pages on their own tab. Each window should be
pointing to one of the following 10 web pages:

1. https://www.google.com
2. http://www.nationalgeographic.com
3. http://cnn.com
4. https://www.zsl.org
5. http://www.telegraph.co.uk/
6. http://www.go2africa.com/
7. http://www.animalplanet.com/
8. http://www.theguardian.com/
9. http://travel.usnews.com/
10. http://www.independent.co.uk/

A window should be open only after 2 seconds after the opening of the previous window.
When all windows are open, then program should wait for 5 seconds before start closing the
windows in the following order: first the even positioned windows (the 2nd, the 4th, the 6th,
the 8th and the 10th) and then the odd positioned windows (the 1st, the 3rd, the 5th, the 7th
and the 9th). Closing one window should wait for 2 seconds before closing the next one. 
At the end it should display a message to user whether he would like to see this
sequence of openings and closings again. If the user answers yes, then the whole process should 
start from the beginning. Else, the program would end.

Watch the following video to see the final web page and JavaScript program in action:
 
<div id="media-title-video-task-opening-and-closing-windows.mp4">Task to Open and Close Windows</div>
<a href="https://player.vimeo.com/video/194308138"></a>           
           
Some hints that might be helpful to you:
           
1. Consider declaring an array that would hold information about the windows. e.g. the URL/address and the window handle returned by `open()`. You will need that
in order to close the window later on.
2. You might want to think recursively. Maybe a function that opens a window and calls itself to open the next one might be a good approach. But, this is just an
idea. Try to work your ideas too.
3. In any case, try to break the big problem into smaller problems. [Divide and conquer](http://www.inf.ed.ac.uk/teaching/courses/inf2c-se/Lectures/Lectures-2014/lecture-14-SEprinciples.pdf). This will help you reach a total solution at the end.            
           
**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.
