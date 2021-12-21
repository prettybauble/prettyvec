# author: Ethosa
import
  types,
  math


{.push inline.}
func `==`*(a, b: Vec2Obj): bool =
  ## Compares two vectors.
  a.x == b.x and a.y == b.y

func `+`*(a, b: Vec2Obj): Vec2Obj =
  ## Addition of two vectors
  vec2(a.x + b.x, a.y + b.y)

func `-`*(a, b: Vec2Obj): Vec2Obj =
  ## Subtraction of two vectors.
  vec2(a.x - b.x, a.y - b.y)

func `/`*(a, b: Vec2Obj): Vec2Obj =
  ## Division of two vectors.
  vec2(a.x / b.x, a.y / b.y)

func `*`*(a, b: Vec2Obj): Vec2Obj =
  ## Multiplication of two vectors.
  vec2(a.x * b.x, a.y * b.y)


func `-`*(a: Vec2Obj, b: float): Vec2Obj =
  vec2(a.x - b, a.y - b)

func `+`*(a: Vec2Obj, b: float): Vec2Obj =
  vec2(a.x + b, a.y + b)

func `/`*(a: Vec2Obj, b: float): Vec2Obj =
  vec2(a.x / b, a.y / b)

func `*`*(a: Vec2Obj, b: float): Vec2Obj =
  vec2(a.x * b, a.y * b)


func abs*(a: Vec2Obj): Vec2Obj =
  vec2(abs(a.x), abs(a.y))

func len*(a: Vec2Obj): float =
  ## Returns length of vector2
  sqrt(a.x*a.x + a.y*a.y)

func pow*(a: Vec2Obj, power: float): Vec2Obj =
  vec2(pow(a.x, power), pow(a.y, power))

func rotate*(a: Vec2Obj, angle: float): Vec2Obj =
  ## Rotates vector by angle in degrees.
  vec2(cos(angle)*a.x - sin(angle)*a.y,
       sin(angle)*a.x + cos(angle)*a.y)

func sqrt*(a: Vec2Obj): Vec2Obj =
  vec2(sqrt(a.x), sqrt(a.y))

func norm*(a: Vec2Obj): Vec2Obj =
  ## Returns normalized vector object.
  let l = a.len()
  if l != 0:
    return vec2(a.x / l, a.y / l)
  a

func dot*(a, b: Vec2Obj): float =
  ## Returns result of dot product.
  a.x*b.x + a.y*b.y

proc angleTo*(a, b: Vec2Obj): float =
  arccos(a.dot(b))

proc distance*(a, b: Vec2Obj): float =
  sqrt((b.x - a.x)*(b.x - a.x) + (b.y - a.y)*(b.y - a.y))

proc directionTo*(a, b: Vec2Obj): Vec2Obj =
  ## Returns normalized direction to other vector2.
  vec2(b.x - a.x, b.y - a.y).norm()

{.pop.}
