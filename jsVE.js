function scrollAppear(){
    var text = document.querySelector('.text');
    var position = text.getBoundingClientRect().top;
    var screenPosition = window.innerHeight / 1.7;

    if(position < screenPosition){
        text.classList.add('text-appear');
    } else {
        text.classList.remove('text-appear');
    }
}

 window.addEventListener('scroll',scrollAppear);