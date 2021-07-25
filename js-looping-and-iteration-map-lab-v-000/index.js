function lowerCaseDrivers(array){
  return array.map(function(element){return element.toLowerCase(); });
};
function nameToAttributes(array){
  return array.map(function(element){
    let name = element.split(" ");
    return{firstName: name[0], lastName: name[1]};
  });
};
function attributesToPhrase(array){
  return array.map(function(element){
    return `${element.name} is from ${element.hometown}`;
  });
};
