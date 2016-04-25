/**
 * Created by alistair on 18/04/2016.
 */
function toggle_div(id) {

    var show = document.getElementById(id);
    var nav = document.getElementById('navhide');

    if(show.style.display == 'block'){
        show.style.display = 'none';
        navhide.style.display = 'block';
      }
    else {
        show.style.display = 'block';
        navhide.style.display = 'none';
      }
}

function open_welcome(){
    var div = document.getElementById('about');
    div.classList.toggle('open');
}



if($('.new-background-img')){
    var bg = $('.new-background-img');
    var url = bg.data('url');    
    bg.css('opacity', 0);
    bg.css('background-image', 'url('+url+')');
    bg.css.transition = 'opacity 1s';

    var img = new Image();
    img.onload = function(){
        bg.css('opacity', 1);
    }
    img.src = url;   
    
}

