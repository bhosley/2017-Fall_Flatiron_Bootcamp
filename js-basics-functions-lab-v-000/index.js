function distanceFromHqInBlocks(block){
  return Math.abs(block - 42);
};

function distanceFromHqInFeet(block){
  return distanceFromHqInBlocks(block) * 264;
};

function distanceTravelledInFeet(block, destination){
  return Math.abs(block - destination) * 264;
};

function calculatesFarePrice(block, destination){
  const distance = distanceTravelledInFeet(block, destination);
  if (distance <=400){
      return 0;
  }else if (distance >400 && distance <= 2000) {
      return 0.02 * distance;
  }else if (distance > 2000 && distance <= 2500) {
      return 25;
  }else{
      return 'cannot travel that far'
  };
};
