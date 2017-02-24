$(document).ready(function() {
  console.log($('.comment'))      //GIRO:  THIS SHOWED US WHERE WE GOT TO IN THE DOM
  $('.comment').hover(function() { //GIRO:  FIRST CODE DIDNT WORK:
                                  //        $('.comment').on('hover')
      console.log('hovered')    //GIRO:  THIS SHOWED US IF WE GOT INSIDE THE FUNCTION
      $(this).css('background', 'red')
  })
})
