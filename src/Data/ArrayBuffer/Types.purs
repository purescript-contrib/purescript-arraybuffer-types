module Data.ArrayBuffer.Types (
  ArrayBuffer
, DataView
, ArrayView
, ByteOffset
, ByteLength
, kind ArrayViewType
, Int8
, Int16
, Int32
, Uint8
, Uint16
, Uint32
, Uint8Clamped
, Float32
, Float64
, Int8Array
, Int16Array
, Int32Array
, Uint8Array
, Uint16Array
, Uint32Array
, Uint8ClampedArray
, Float32Array
, Float64Array
)

where

import Prelude

-- | Represents a JS ArrayBuffer object
foreign import data ArrayBuffer :: Type

instance eqArrayBuffer :: Eq ArrayBuffer where eq = arrayBufferEquals

-- | Represents a JS DataView on an ArrayBuffer (a slice into the ArrayBuffer)
foreign import data DataView :: Type

instance eqDataView :: Eq DataView where eq = dataViewEquals

-- | The unifying representation for the different typed arrays
foreign import data ArrayView :: ArrayViewType -> Type

-- | Offset in bytes into a DataView or ArrayBufer
type ByteOffset = Int

-- | Length in bytes of a DataView or ArrayBuffer
type ByteLength = Int

foreign import kind ArrayViewType

foreign import data Int8 :: ArrayViewType
foreign import data Int16 :: ArrayViewType
foreign import data Int32 :: ArrayViewType
foreign import data Uint8 :: ArrayViewType
foreign import data Uint16 :: ArrayViewType
foreign import data Uint32 :: ArrayViewType
foreign import data Uint8Clamped :: ArrayViewType
foreign import data Float32 :: ArrayViewType
foreign import data Float64 :: ArrayViewType

type Int8Array = ArrayView Int8
type Int16Array = ArrayView Int16
type Int32Array = ArrayView Int32
type Uint8Array = ArrayView Uint8
type Uint16Array = ArrayView Uint16
type Uint32Array = ArrayView Uint32
type Uint8ClampedArray = ArrayView Uint8Clamped
type Float32Array = ArrayView Float32
type Float64Array = ArrayView Float64

instance eqInt8Array :: Eq (ArrayView Int8) where eq = typedArrayEquals
instance eqInt16Array :: Eq (ArrayView Int16) where eq = typedArrayEquals
instance eqInt32Array :: Eq (ArrayView Int32) where eq = typedArrayEquals
instance eqUint8Array :: Eq (ArrayView Uint8) where eq = typedArrayEquals
instance eqUint16Array :: Eq (ArrayView Uint16) where eq = typedArrayEquals
instance eqUint32Array :: Eq (ArrayView Uint32) where eq = typedArrayEquals
instance eqUint8ClampedArray :: Eq (ArrayView Uint8Clamped) where eq = typedArrayEquals
instance eqFloat32Array :: Eq (ArrayView Float32) where eq = typedArrayEquals
instance eqFloat64Array :: Eq (ArrayView Float64) where eq = typedArrayEquals


foreign import arrayBufferEquals :: ArrayBuffer -> ArrayBuffer -> Boolean
foreign import dataViewEquals :: DataView -> DataView -> Boolean
foreign import typedArrayEquals :: ∀ a. ArrayView a -> ArrayView a -> Boolean
