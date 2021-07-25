const driver = {};

function updateDriverWithKeyAndValue(driver, key, value){
  newObj = {...driver};
  newObj[key] = value;
  return newObj;
};
function destructivelyUpdateDriverWithKeyAndValue(driver, key, value){
  driver[key] = value;
  return driver;
};
function deleteFromDriverByKey(driver, key){
  newObj = Object.assign({}, driver);
  delete newObj[key];
  return newObj;
};
function destructivelyDeleteFromDriverByKey(driver, key){
  return delete driver[key];
};
