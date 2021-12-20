import
  prettyvec,
  unittest,
  math


suite "Vec2":

  test "basic operations":
    assert vec2() + vec2(1) == vec2(1)
    assert vec2(2) * vec2(3) == vec2(6)
    assert vec2(2) / vec2(3) == vec2(2/3)
    assert vec2(2) - vec2(3) == vec2(-1)

    assert vec2(1) + 5 == vec2(6)
    assert vec2(1) * 5 == vec2(5)
    assert vec2(1) - 5 == vec2(-4)
    assert vec2(1) / 5 == vec2(0.2)

  test "basic math":
    assert sqrt(vec2(4)) == vec2(2)
    assert pow(vec2(2), 3) == vec2(8, 8)

    assert dot(vec2(2), vec2(2)) == 8
    assert vec2(4).len() == sqrt(32f64)
    echo norm(vec2(10))
