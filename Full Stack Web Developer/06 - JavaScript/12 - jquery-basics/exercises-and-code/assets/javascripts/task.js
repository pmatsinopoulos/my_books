$(document).ready(function() {
    var imageWidth = 150;
    var imageHeight = 78;
    var score = 0;

    var displayImage = function() {
        var windowWidth = $(window).width();
        var windowHeight = $(window).height();
        var newTop = Math.random() * (windowHeight - imageHeight);
        var newLeft = Math.random() * (windowWidth - imageWidth);

        $('#ufo-image').
            css({'top': newTop, 'left': newLeft}).
            removeClass('hidden');
    };

    var hideImage = function() {
        $('#ufo-image').addClass('hidden');
    };

    var random = function() {
        return (Math.random() * 2000);
    };

    var increaseScore = function() {
        score += 1;
    };

    var displayScore = function() {
        $('#score').html(score);
    };

    var timer = 60; // the duration of the game.

    var handleImage = function() {
        hideImage();
        displayImage();
        if (timer > 0) {
            setTimeout(handleImage, random());
        }
    };

    var displayTimeLeft = function() {
        $('#timer').html(timer);
    };

    var decreaseTimeLeft = function() {
        timer -= 1;
    };

    var initializeTimer = function() {
        displayTimeLeft();

        var timerInterval = setInterval(function() {
            decreaseTimeLeft();

            if (timer < 0) {
                clearInterval(timerInterval);
                hideImage();
            }
            else {
                displayTimeLeft();
            }

        }, 1000);
    };

    initializeTimer();

    setTimeout(handleImage, random());

    $('#ufo-image a').on('click', function(){
        hideImage();
        increaseScore();
        displayScore();
        return false;
    });
});
