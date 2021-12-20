# author: Ethosa

type
  Vec2Ref* = ref Vec2Obj
  Vec2Obj* = object
    x*, y*: float


{.push inline.}
func initVec2*: Vec2Obj =
  ## Creates the empty Vec2Obj(0, 0).
  Vec2Obj(x: 0, y: 0)

func initVec2*(xy: float): Vec2Obj =
  ## Creates the Vec2Obj(xy, xy)
  Vec2Obj(x: xy, y: xy)

func initVec2*(x, y: float): Vec2Obj =
  ## Creates the Vec2Obj(x, y)
  Vec2Obj(x: x, y: y)


func newVec2*: Vec2Ref =
  ## Creates the new Vec2Obj(0, 0)
  Vec2Ref(x: 0, y: 0)

func newVec2*(xy: float): Vec2Ref =
  ## Creates the new Vec2Obj(0, 0)
  Vec2Ref(x: xy, y: xy)

func newVec2*(x, y: float): Vec2Ref =
  ## Creates the new Vec2Obj(0, 0)
  Vec2Ref(x: x, y: y)


func vec2*: Vec2Obj =
  ## Creates the Vec2Obj(0, 0)
  initVec2()

func vec2*(xy: float): Vec2Obj =
  ## Creates the Vec2Obj(xy, xy)
  initVec2(xy)

func vec2*(x, y: float): Vec2Obj =
  ## Creates the Vec2Obj(x, y)
  initVec2(x, y)
{.pop.}