
const sentence = "Welcome to the Med Test app, this website is a proof-of-concept showing various uses of CRUD and the MVC.";

let i = 0;

window.onload = () => {

  sentence_type = setInterval(function(){ 
      
    document.getElementById("testloop").innerHTML += sentence[i];

    if (i == sentence.length - 1){
      clearInterval(sentence_type);
    }
    i++
  }, 70);

  let cursor = true;
  let speed = 500;

  cursor_timer = setInterval(function(){

    if(cursor) {
      document.getElementById('cursor').style.opacity = 0;
      cursor = false;
    }else {
      document.getElementById('cursor').style.opacity = 1;
      cursor = true;
    }
  }, speed);

  function stopTimer() {
    clearInterval(cursor_timer);
    const element = document.getElementById('cursor');
    element.innerHTML = "";
  }

  setTimeout(stopTimer, 10000);


}