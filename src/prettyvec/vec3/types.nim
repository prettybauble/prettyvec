# author: Ethosa

type
  Vec3Ref* = ref Vec3Obj
  Vec3Obj* = object
    x*, y*, z*: float


{.push inline.}
func initVec3*: Vec3Obj =
  ## Creates the empty Vec3Obj(0, 0).
  Vec3Obj(x: 0, y: 0, z: 0)

func initVec3*(xyz: float): Vec3Obj =
  ## Creates the Vec3Obj(xyz, xyz)
  Vec3Obj(x: xyz, y: xyz, z: xyz)

func initVec3*(x, y, z: float): Vec3Obj =
  ## Creates the Vec3Obj(x, y, z)
  Vec3Obj(x: x, y: y, z: z)


func newVec3*: Vec3Ref =
  ## Creates the new Vec3Obj(0, 0)
  Vec3Ref(x: 0, y: 0, z: 0)

func newVec3*(xyz: float): Vec3Ref =
  ## Creates the new Vec3Obj(0, 0)
  Vec3Ref(x: xyz, y: xyz, z: xyz)

func newVec3*(x, y, z: float): Vec3Ref =
  ## Creates the new Vec3Obj(0, 0)
  Vec3Ref(x: x, y: y, z: z)


func vec3*: Vec3Obj =
  ## Creates the Vec3Obj(0, 0)
  initVec3()

func vec3*(xyz: float): Vec3Obj =
  ## Creates the Vec3Obj(xyz, xyz)
  initVec3(xyz)

func vec3*(x, y, z: float): Vec3Obj =
  ## Creates the Vec3Obj(x, y, z)
  initVec3(x, y, z)
{.pop.}