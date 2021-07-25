function getFirstSelector(selector){
  return document.querySelector(selector);
}

function nestedTarget(){
  return document.getElementById(`nested`).querySelector(`.target`);
}

function increaseRankBy(n){
  const lis = document.getElementById('app').querySelectorAll('ul.ranked-list');

  for (let i = 0; i < lis.length; i++) {
    lis[i].innerHTML = (i + n).toString();
 };
}

function deepestChild(/*node*/){
  var deepest = document.getElementById(`grand-node`).querySelectorAll(`div`);
    //replace grande-node with a variable 'node' to make the
    //function generalized and accept an arguument.
  var child = deepest.length -1;
  return deepest[child]
}
