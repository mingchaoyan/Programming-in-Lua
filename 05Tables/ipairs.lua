t = {10, print, x = 12 , k = "hi"}
for k, v in pairs(t) do
  print(k, v)
end

print("======")

for k, v in ipairs(t) do
  print(k, v)
end

print("====")

for x in ipairs(t) do
  print(x)
end
