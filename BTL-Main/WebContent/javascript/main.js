function getWord(character){
	var buttonName = document.getElementById("buttonNameClicked");
	buttonName.value = character;
}

function chooseWord(word){
	var txtInput = document.getElementById("txtInput");
	txtInput.value = word.value;
	var searchForm = document.getElementById("search-form");
	searchForm.submit();
}

$(function(){
  if ('speechSynthesis' in window) {
    $('#speak').click(function(){
      var text = $('#txtInput').val();
      var msg = new SpeechSynthesisUtterance();
      msg.text = text;

      msg.onend = function(e) {
        console.log('Finished in ' + event.elapsedTime + ' seconds.');
      };

      speechSynthesis.speak(msg);
    })
  }
});