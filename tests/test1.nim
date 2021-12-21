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
    echo rotate(vec2(15, 20), 45)
    echo distance(vec2(3, 3), vec2(15, 4))
    echo directionTo(vec2(13, 12), vec2(10, 10))


suite "Vec3":

  test "basic operations":
    assert vec3() + vec3(1) == vec3(1)
    assert vec3(2) * vec3(3) == vec3(6)
    assert vec3(2) / vec3(3) == vec3(2/3)
    assert vec3(2) - vec3(3) == vec3(-1)

    assert vec3(1) + 5 == vec3(6)
    assert vec3(1) * 5 == vec3(5)
    assert vec3(1) - 5 == vec3(-4)
    assert vec3(1) / 5 == vec3(0.2)

  test "basic math":
    assert sqrt(vec3(4)) == vec3(2)
    assert pow(vec3(4), 3) == vec3(64)
    assert dot(vec3(2), vec3(2)) == 12
    assert cross(vec3(2), vec3(2)) == -4
    assert vec3(4).len() == sqrt(48f64)

    echo vec3(4, 1, 3).norm()
