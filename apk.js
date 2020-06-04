function smoothScroll(target,duration){
    var target = document.querySelector(target);
    var targetPosition = target.getBoundingClientRect().top;
    var startPostion = window.pageYOffset;
    var distance = targetPosition - startPostion;
    var startTime = null;
    

    function animation(currentTime) {
        if(startTime === null ) startTime = currentTime;
        var timeElapsed = currentTime - startTime;
        var run = ease(timeElapsed, startPostion, distance, duration);
        window.scrollTo(0,run);
        if(timeElapsed < duration) requestAnimationFrame(animation);
    }


    function ease(t, b, c, d){
        t /= d/2;
        if (t < 1) return c/2*t*t + b;
        t--;
        return -c/2 * (t*(t-2) - 1) + b;
    };


    requestAnimationFrame(animation);
}

var s1 = document.querySelector('.s1');
var s2 = document.querySelector('.s2');

s1.addEventListener('click', function(){
    smoothScroll('.s2', 1000);
});

s2.addEventListener('click', function(){
    smoothScroll('.s1', 1000);
});