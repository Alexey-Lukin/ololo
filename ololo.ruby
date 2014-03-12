def solution(a)
  sol = true
  n = 0
  x = 0
  y = 0
  ar = []
  while sol && n <= a.length do
    case n % 4
    when 0
      new_ar = Array.new(a[n]) { |index| [x, y + index] }[1..-1]
      y += a[n]
    when 1
      new_ar = Array.new(a[n]) { |index| [x + index, y] }[1..-1]
      x += a[n]
    when 2
      new_ar = Array.new(a[n]) { |index| [x, y - index] }[1..-1]
      y -= a[n]
    when 3
      new_ar = Array.new(a[n]) { |index| [x - index, y] }[1..-1]
      x -= a[n]
    end
    if (ar | new_ar).empty?
      ar += new_ar
      n += 1
    else
      sol = false
    end
  end
  if sol
    return 0
  else
    return n + 1
  end
end
