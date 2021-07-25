function produceDrivingRange(blockRange){
  return function (first,last){
    let difference = Math.abs(Number(last.slice(0,-2)) - Number(first.slice(0,-2)))
    let totalDifference = Math.abs(blockRange - difference)
    if (difference < blockRange) {
      return "within range by " + totalDifference
    } else {
      return totalDifference + " blocks out of range"
    };
  };
};

function produceTipCalculator(tip){
  return function(price){
    return tip*price
  };
};
