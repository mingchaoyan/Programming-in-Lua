function f (...)
  for _, v in ipairs{...} do
    print(v)
  end
end

f(1, 2, 3)
