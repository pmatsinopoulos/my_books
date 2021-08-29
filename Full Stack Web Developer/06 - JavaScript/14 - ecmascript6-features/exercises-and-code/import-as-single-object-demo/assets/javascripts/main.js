import * as MathsAgain from './my-math-library.js'

window.onload = function(){
  let element = document.getElementById('add');
  element.innerHTML = MathsAgain.add(5, 6).toString();

  element = document.getElementById('subtract');
  element.innerHTML = MathsAgain.subtract(11, 8).toString();
};
