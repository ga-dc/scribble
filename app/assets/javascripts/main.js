
var clear = function() {
  @session[:history] = []
}
('#clear_history').onClick(clear())
