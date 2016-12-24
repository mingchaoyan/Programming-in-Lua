function fact (n)
  if n == 0 then
    return 1;
  else
    return n * fact(n - 1)
  end
end

print("enter a number:")
a = io.read("*n")
if a > 0 then
  print(fact(a))
else
  print("please enter a positive number!")
end
