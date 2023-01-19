
window.onload = () => {

  let sentence_1 = "My name is Devon and I created this site using Ruby on Rails and a sprinkle of Javascript."
  let sentence_2 = "This website is a proof-of-concept showing various uses of CRUD and the Model-View-Controller pattern."
  let sentence_3 = "Welcome to the Med App! Click 'Sign Up' to get started or 'Sign In' if you've been here before."
  
  let i = -1;

  function typeSentence(sentence) {

    const sentence_type = setInterval(function(){ 
    
    document.getElementById("sentenceloop").innerHTML += sentence[i];

    if (i == sentence.length - 1){
      clearInterval(sentence_type);
    } else {
      i++
    }
    
    }, 60);
    i++
  }

  function deleteSentence() {
    
    const sentence_loop = document.getElementById("sentenceloop")
    const sentence_delete = setInterval(function(){ 
    
    if (i < 0){
      clearInterval(sentence_delete);
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

  function stopEverything() {
    window.stop();
  }


  typeSentence(sentence_1);
  cursorBlink();

  setTimeout(deleteSentence, 7000);
  setTimeout(typeSentence.bind(null, sentence_2), 9000);
  setTimeout(deleteSentence, 16000);
  setTimeout(typeSentence.bind(null, sentence_3), 18000);
  setTimeout(stopCursor, 26000);
  setTimeout(stopEverything, 28000);
}