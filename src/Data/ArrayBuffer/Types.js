
exports.dataViewEquals = function(dataView1) {
  return function(dataView2) {
    if(dataView1 === dataView2){ return true; }
    if(dataView1.byteLength !== dataView2.byteLength) { return false; }
    
    for(var i = 0; i < dataView1.byteLength; i++){
      if(dataView1.getUint8(i) !== dataView2.getUint8(i)) { return false; }
    }
    return true;
  };
};

exports.arrayBufferEquals = function(buffer1) {
  return function(buffer2) {
    if(buffer1 === buffer2){ return true; }
    // as of the latest versions of v8, it is supposedly faster to compare DataViews
    // https://v8.dev/blog/dataview
    return exports.dataViewEquals(new DataView(buffer1))(new DataView(buffer2));
  };
};

exports.typedArrayEquals = function(array1){
  return function(array2){
    if(array1 === array2){ return true; }
    if(array1.byteLength !== array2.byteLength) { return false; }
    return array1.every(function(value, i){ 
      return value == array2[i];
    });
  };
};





