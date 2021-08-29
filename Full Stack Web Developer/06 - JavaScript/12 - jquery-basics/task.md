You will need to implement a web page that will actually be a game. 

1. The player needs to click on a UFO image while this is visible.
2. Whenever the user clicks on a UFO image it gets one more point.
3. The UFO images are displayed on the page on random positions. And they are visible for a random duration.
4. User has 1 minute to play the game. His objective is to click on as many UFO images as he can.

You can see this page in action here:

<div id="media-title-video-task-game-ufo-shooting.mp4">Task - Game: Shooting a UFO</div>
<a href="https://player.vimeo.com/video/194307766"></a>

Some hints that will help you build your web page:

1. You will need to have 3 files: `task.html`, `assets/javascripts/task.js` and `assets/stylesheets/task.css`.
1. The UFO image is already given to you. Look at the resources folder for this chapter.
1. You will need both Twitter Bootstrap and jQuery.
1. You will need a div that would contain the clickable image. This will generally be invisible (hint: class `hidden`).
1. You will need a div to display the current score.
1. You will need a div to display the current time left.
1. Make sure that you are using box sizing `border-box` for all the elements.
1. The div that would display the UFO will need to change position dynamically and randomly. Since its position will be
on specific `top` and `left` coordinates, we are suggesting that you will use `absolute` position for it. But this also
means that the containing element, `body` will need to have `relative` position.
1. On JavaScript layer:
    1. Break the problem into smaller functions. This is a suggested list of functions:
        1. a `displayImage` function would be responsible to display the image. This needs to calculate the new coordinates of the
        image (`top` and `left` properties) and then display the image on this position.
        1. a `hideImage` function would be responsible to hide the image.
        1. a `random` function would be responsible to calculate the number of milliseconds an image would be displayed.
        1. an `increaseScore` function would be responsible to increase the current score. You will also need a variable to keep track of the current score.
        1. a `displayScore` function would be responsible to display the current score.
        1. a `handleImage` function would be responsible to
            1. hide the current image by calling `hideImage`.
            1. display the image on new position by calling `displayImage`.
            1. register a new timeout action to call `handleImage` again on a new random timeout.
        1. a `displayTimeLeft` function that would display the current time left. You will need a variable to hold the time left too.
        1. a `decreaseTimeLeft` function that would decrease the time left by 1.
        1. an `initializeTimer` function that would display the time left and register an interval to update it every second.
        1. a function that would be called on `click` event that would occur on the UFO image. This would 
            1. first hide the current image, by calling the `hideImage()` function.
            1. increase the score, by calling the `increaseScore` function.
            1. display the new score, by calling the `displayScore` function.
    1. Note that [.width()](https://api.jquery.com/width/) method on `$(window)` returns the current window width.
    1. The [.height()](https://api.jquery.com/height/) method on `$(window)` returns the current window height.
    1. Window width and window height are necessary in order to make sure that you calculate a new random position for the image that
    falls in between the window dimensions.
    1. The `Math.random()` returns a random number between 0 (including) and 1 (excluding). 
    1. You will need to use the [.css()](https://api.jquery.com/css/) method to set the `top` and the `left` properties of the image
    within the `displayImage` function.
    1. You will need to use the method [.removeClass()](https://api.jquery.com/removeClass/) to remove the `hidden` class when you want
    to make the image visible. Add this class back when you want to make the image invisible.
    1. The duration of the image being visible, needs to be between 0 and 2 seconds. A `Math.random() * 2000` will give you that in miliseconds.
    1. The `setTimeout()` needs to be used to handle the image at random intervals.
    1. The `setInterval()` needs to be used to set the time countdown.
    1. The `clearInterval()` needs to be used to clear the time countdown.
    
We understand that this might be a difficult task. It's your last task before we close the JavaScript section.
    
**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.
