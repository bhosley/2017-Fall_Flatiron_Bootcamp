function getIt(){
  $("p").on("click", function(){
    alert("Hey!");
  })
};

function frameIt(){
  $("img").on("load", function(){
    $("img").addClass("tasty")
  })
};

function pressIt(){
  $('#typing').on("keydown", function(key){
    if(key.which === 71){
      alert("That's the Spot!")
    }
  })
};

function submitIt(){
  $(document).on("submit", function(){
    alert("Your form is going to be submitted now.")
  })
};

$(document).ready(function(){
getIt();
frameIt();
pressIt();
submitIt();
});
