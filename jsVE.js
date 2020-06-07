function scrollAppear(){
    var text = document.querySelector('.text');
    var img = document.querySelector('.img');
    var position = text.getBoundingClientRect().top;
    var screenPosition = window.innerHeight / 1.7;

    if(position < screenPosition){
        text.classList.add('text-appear');
    } else {
        text.classList.remove('text-appear');
    }
}

 window.addEventListener('scroll',scrollAppear);



 var i = 0;
 var images = [];
 var time = 3000;



 images[0] = 'img0.jpg';
 images[1] = 'img1.jpg';
 images[2] = 'img2.jpg';
 images[3] = 'img3.jpg';

 function changeIMG(){
     document.slide.src = images[i];


     if (i < images.length - 1) {
         i++
     } else {
         i = 0
     }

     setTimeout("changeIMG()", time);
 }

 window.onload = changeIMG;