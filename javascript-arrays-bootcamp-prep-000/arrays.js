var chocolateBars = ["snickers", "hundred grand", "kitkat", "skittles"]

function addElementToEndOfArray(array, element){
  return [...array, element]
}

function addElementToBeginningOfArray(array, element){
  return [element, ...array]
}

function destructivelyAddElementToBeginningOfArray(array, element){
  array.unshift(element);
  return array
}

function destructivelyAddElementToEndOfArray(array, element){
  array.push(element);
  return array
}

function accessElementInArray(array, index){
  return array[index]
}

function destructivelyRemoveElementFromBeginningOfArray(array){
  array.shift();
  return array
}

function destructivelyRemoveElementFromEndOfArray(array){
  array.pop();
  return array
}

function removeElementFromBeginningOfArray(array){
  return array.slice(1)
}

function removeElementFromEndOfArray(array){
  return array.slice(0, array.length-1)
}
