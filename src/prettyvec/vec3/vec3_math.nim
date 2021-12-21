# author: Ethosa
import
  types,
  math


{.push inline.}
func `==`*(a, b: Vec3Obj): bool =
  ## Compares two vectors.
  a.x == b.x and a.y == b.y and a.z == b.z

func `+`*(a, b: Vec3Obj): Vec3Obj =
  ## Addition of two vectors
  vec3(a.x + b.x, a.y + b.y, a.z + b.z)

func `-`*(a, b: Vec3Obj): Vec3Obj =
  ## Subtraction of two vectors.
  vec3(a.x - b.x, a.y - b.y, a.z - b.z)

func `/`*(a, b: Vec3Obj): Vec3Obj =
  ## Division of two vectors.
  vec3(a.x / b.x, a.y / b.y, a.z / b.z)

func `*`*(a, b: Vec3Obj): Vec3Obj =
  ## Multiplication of two vectors.
  vec3(a.x * b.x, a.y * b.y, a.z * b.z)


func `-`*(a: Vec3Obj, b: float): Vec3Obj =
  vec3(a.x - b, a.y - b, a.z - b)

func `+`*(a: Vec3Obj, b: float): Vec3Obj =
  vec3(a.x + b, a.y + b, a.z + b)

func `/`*(a: Vec3Obj, b: float): Vec3Obj =
  vec3(a.x / b, a.y / b, a.z / b)

func `*`*(a: Vec3Obj, b: float): Vec3Obj =
  vec3(a.x * b, a.y * b, a.z * b)


func abs*(a: Vec3Obj): Vec3Obj =
  vec3(abs(a.x), abs(a.y), abs(a.z))

func len*(a: Vec3Obj): float =
  ## Returns length of vector2
  sqrt(a.x*a.x + a.y*a.y + a.z*a.z)

func pow*(a: Vec3Obj, power: float): Vec3Obj =
  vec3(pow(a.x, power), pow(a.y, power), pow(a.z, power))

func sqrt*(a: Vec3Obj): Vec3Obj =
  vec3(sqrt(a.x), sqrt(a.y), sqrt(a.z))

func norm*(a: Vec3Obj): Vec3Obj =
  ## Returns normalized vector object.
  let l = a.len()
  if l != 0:
    return vec3(a.x / l, a.y / l, a.z / l)
  a

func dot*(a, b: Vec3Obj): float =
  ## Returns result of dot product.
  a.x*b.x + a.y*b.y + a.z*b.z

proc cross*(a, b: Vec3Obj): float =
  ## Returns result of cross product.
  a.x*b.x - a.y*b.y - a.z*b.z

proc angleTo*(a, b: Vec3Obj): float =
  arccos(a.dot(b))

proc distance*(a, b: Vec3Obj): float =
  sqrt((b.x - a.x)*(b.x - a.x) + (b.y - a.y)*(b.y - a.y) + (b.z - a.z)*(b.z - a.z))

proc directionTo*(a, b: Vec3Obj): Vec3Obj =
  ## Returns normalized direction to other vector3.
  vec3(b.x - a.x, b.y - a.y, b.z - a.z).norm()

{.pop.}
