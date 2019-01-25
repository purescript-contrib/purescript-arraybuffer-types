


// These are from
// https://developers.google.com/web/updates/2012/06/How-to-convert-ArrayBuffer-to-and-from-String

exports.bufferToString = function(buffer) {
  return String.fromCharCode.apply(null, new Uint16Array(buffer));
}

exports.stringToArrayBuffer = function(str) {
  var buffer = new ArrayBuffer(str.length*2); // 2 bytes for each char
  var bufferView = new Uint16Array(buffer);
  for (var i = 0, length =str.length; i < length; i++) {
    bufferView[i] = str.charCodeAt(i);
  }
  return buffer;
}

exports.bufferToDataView = function(buffer){
  return new DataView(buffer);
}

exports.int8Array = function(array){
  return Int8Array.from(array);
};

exports.uint8Array = function(array){
  return Uint8Array.from(array);
};

exports.uint8ClampedArray = function(array){
  return Uint8ClampedArray.from(array);
};

exports.int16Array = function(array){
  return Int16Array.from(array);
};

exports.uint16Array = function(array){
  return Uint16Array.from(array);
};

exports.int32Array = function(array){
  return Int32Array.from(array);
};

exports.uint32Array = function(array){
  return Uint32Array.from(array);
};

exports.float32Array = function(array){
  return Float32Array.from(array);
};

exports.float64Array = function(array){
  return Float64Array.from(array);
};


