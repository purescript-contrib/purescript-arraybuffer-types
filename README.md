# Module Documentation

## Module Data.ArrayBuffer.Types

#### `ArrayBuffer`

``` purescript
data ArrayBuffer :: *
```

Represents a JS ArrayBuffer object

#### `DataView`

``` purescript
data DataView :: *
```

Represents a JS DataView on an ArrayBuffer (a slice into the ArrayBuffer)

#### `ArrayView`

``` purescript
data ArrayView :: * -> *
```

The unifying representation for the different typed arrays

#### `ByteOffset`

``` purescript
type ByteOffset = Number
```

Offset in bytes into a DataView or ArrayBufer

#### `ByteLength`

``` purescript
type ByteLength = Number
```

Length in bytes of a DataView or ArrayBuffer

#### `Int8`

``` purescript
newtype Int8
  = Int8 Number
```


#### `Int16`

``` purescript
newtype Int16
  = Int16 Number
```


#### `Int32`

``` purescript
newtype Int32
  = Int32 Number
```


#### `Uint8`

``` purescript
newtype Uint8
  = Uint8 Number
```


#### `Uint16`

``` purescript
newtype Uint16
  = Uint16 Number
```


#### `Uint32`

``` purescript
newtype Uint32
  = Uint32 Number
```


#### `Uint8Clamped`

``` purescript
newtype Uint8Clamped
  = Uint8Clamped Number
```


#### `Float32`

``` purescript
newtype Float32
  = Float32 Number
```


#### `Float64`

``` purescript
newtype Float64
  = Float64 Number
```


#### `Int8Array`

``` purescript
type Int8Array = ArrayView Int8
```


#### `Int16Array`

``` purescript
type Int16Array = ArrayView Int16
```


#### `Int32Array`

``` purescript
type Int32Array = ArrayView Int32
```


#### `Uint8Array`

``` purescript
type Uint8Array = ArrayView Uint8
```


#### `Uint16Array`

``` purescript
type Uint16Array = ArrayView Uint16
```


#### `Uint32Array`

``` purescript
type Uint32Array = ArrayView Uint32
```


#### `Uint8ClampedArray`

``` purescript
type Uint8ClampedArray = ArrayView Uint8Clamped
```


#### `Float32Array`

``` purescript
type Float32Array = ArrayView Float32
```


#### `Float64Array`

``` purescript
type Float64Array = ArrayView Float64
```




