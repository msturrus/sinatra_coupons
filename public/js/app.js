var counter = 0;

$('img').on('click', function() {
  var $copy = $(this).clone();
  if (counter % 2 === 0) {
    $copy.addClass("abrasive3")
    counter++;
  } else {
    $copy.addClass("abrasive4")
    counter++;
  }
  // $copy.addClass("abrasive3");
  $copy.addClass("center");
  // $copy.removeClass("preposterous2");
  $('header').append($copy);
});

// setTimeout(function() {
//
// 		},2000);
// $('.abrasive').on('click', function() {
//   var $copy = $(this).clone();
  // if (counter % 2 === 0) {
  //   $copy.addClass("abrasive3")
  //   counter++;
  // } else {
  //   $copy.addClass("abrasive4")
  //   counter++;
  // }
  // $copy.addClass("abrasive3");
  // $copy.addClass("center");
  // $copy.removeClass("preposterous2");
//   $('header').append($copy);
// });
