
window.onload = () => {

  let sentence = "Welcome to the Med App, this website is a proof-of-concept showing various uses of CRUD and the Model-View-Controller pattern."
  let i = 0;

  function typeSentence() {

    sentence_type = setInterval(function(){ 

    document.getElementById("sentenceloop").innerHTML += sentence[i];

    if (i == sentence.length - 1){
      clearInterval(sentence_type);
    } else {
      i++
    }
    
  }, 60);
  }

  function deleteSentence() {
    
    sentence_loop = document.getElementById("sentenceloop")
    sentence_type_two = setInterval(function(){ 
    
    if (i < 0){
      clearInterval(sentence_type_two);
    } else {
      sentence_loop.innerHTML = sentence_loop.innerHTML.slice(0, -1);
      i--
    }
    

    }, 15);
  }
  
  function cursorBlink() {

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
  }

  function stopCursor() {

    clearInterval(cursor_timer);
    const element = document.getElementById('cursor');
    element.innerHTML = "";

  }


  typeSentence();
  cursorBlink();

  setTimeout(stopCursor, 13000);
  setTimeout(deleteSentence, 9000);

}