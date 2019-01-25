module Test.Main where

import Prelude

import Data.ArrayBuffer.Types (ArrayBuffer, DataView, Float32Array, Float64Array, Int16Array, Int32Array, Int8Array, Uint16Array, Uint32Array, Uint8Array)
import Effect (Effect)
import Test.Assert (assert)

main :: Effect Unit
main = do
  
  let hello1 = stringToArrayBuffer "Hello"
  let hello2 = stringToArrayBuffer "Hello"

  let goodbye = stringToArrayBuffer "Goodbye"


  assert ((stringToArrayBuffer mempty) == (stringToArrayBuffer mempty))
  assert ((bufferToDataView (stringToArrayBuffer mempty)) == (bufferToDataView (stringToArrayBuffer mempty)))

  assert (hello1 == hello2) 
  assert (hello1 == hello1) 
  assert (hello1 /= goodbye) 

  assert ((bufferToDataView hello1) == (bufferToDataView hello2))
  assert ((bufferToDataView hello1) == (bufferToDataView hello1))
  assert ((bufferToDataView hello1) /= (bufferToDataView goodbye))

  assert((int8Array mempty) == (int8Array mempty))
  assert((int8Array [1,2,3]) == (int8Array [1,2,3]))
  assert((int8Array [1,2,3]) /= (int8Array [4,5,6]))

  assert((uint8Array mempty) == (uint8Array mempty))
  assert((uint8Array [1,2,3]) == (uint8Array [1,2,3]))
  assert((uint8Array [1,2,3]) /= (uint8Array [4,5,6]))

  assert((uint8ClampedArray mempty) == (uint8ClampedArray mempty))
  assert((uint8ClampedArray [1,2,3]) == (uint8ClampedArray [1,2,3]))
  assert((uint8ClampedArray [1,2,3]) /= (uint8ClampedArray [4,5,6]))


  assert((int16Array mempty) == (int16Array mempty))
  assert((int16Array [1,2,3]) == (int16Array [1,2,3]))
  assert((int16Array [1,2,3]) /= (int16Array [4,5,6]))

  assert((uint16Array mempty) == (uint16Array mempty))
  assert((uint16Array [1,2,3]) == (uint16Array [1,2,3]))
  assert((uint16Array [1,2,3]) /= (uint16Array [4,5,6]))

  assert((int32Array mempty) == (int32Array mempty))
  assert((int32Array [1,2,3]) == (int32Array [1,2,3]))
  assert((int32Array [1,2,3]) /= (int32Array [4,5,6]))

  assert((uint32Array mempty) == (uint32Array mempty))
  assert((uint32Array [1,2,3]) == (uint32Array [1,2,3]))
  assert((uint32Array [1,2,3]) /= (uint32Array [4,5,6]))

  assert((float32Array mempty) == (float32Array mempty))
  assert((float32Array [1.0,2.0,3.0]) == (float32Array [1.0,2.0,3.0]))
  assert((float32Array [1.0,2.0,3.0]) /= (float32Array [4.0,5.0,6.0]))

  assert((float64Array mempty) == (float64Array mempty))
  assert((float64Array [1.0,2.0,3.0]) == (float64Array [1.0,2.0,3.0]))
  assert((float64Array [1.0,2.0,3.0]) /= (float64Array [4.0,5.0,6.0]))



foreign import bufferToString :: ArrayBuffer -> String
foreign import stringToArrayBuffer :: String -> ArrayBuffer 
foreign import bufferToDataView :: ArrayBuffer -> DataView
foreign import int8Array :: Array Int -> Int8Array
foreign import uint8Array :: Array Int -> Uint8Array
foreign import uint8ClampedArray :: Array Int -> Uint8Array
foreign import int16Array :: Array Int -> Int16Array
foreign import uint16Array :: Array Int -> Uint16Array
foreign import int32Array :: Array Int -> Int32Array
foreign import uint32Array :: Array Int -> Uint32Array
foreign import float32Array :: Array Number -> Float32Array
foreign import float64Array :: Array Number -> Float64Array


 
