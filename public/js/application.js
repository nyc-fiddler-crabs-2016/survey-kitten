$(document).ready(function() {

  var startingNo = 3;
  var $node = "";
  for(varCount=0;varCount<=startingNo;varCount++){
    var displayCount = varCount+1;
    $node += '<p><label for="choice_text['+displayCount+']">Choice: </label><input type="text" name="choice_text['+displayCount+']" id="choice_text'+displayCount+'"><span class="removeVar">Remove Choice</span></p>';
  }
  $('#addVar').after($node);

  $('#new-question-form').on('click', '.removeVar', function(){
    $(this).parent().remove();
    //varCount--;
  });

  $('#addVar').on('click', function(){
    //new node
    varCount++;
    $node = '<p><label for="choice_text['+varCount+']">Choice: </label><input type="text" name="choice_text['+varCount+']" id="choice_text['+varCount+']"><span class="removeVar">Remove Choice</span></p>';
    // $(this).parent().before($node);
    $("#submit-question-button").before($node);
  });

  $('#new-survey-form').on('submit', function(e){
    e.preventDefault();
    $('#new-survey-form-container').hide()
      var $request = $.ajax({
      type: "POST",
      url:'/surveys',
      data: $(this).serialize(),
    }).done(function(response){

      $('#new-question-form-container').show();
      $('#submit-survey-container').show();
    });

});

$('#new-question-form').on('submit', function(e){
    e.preventDefault();
    console.log(this);
    var $request = $.ajax({
      type: "POST",
      url:'/questions',
      data: $(this).serialize(),
    }).done(function(response){
      console.log(response);
      document.getElementById('new-question-form').reset();
    });

})
})
