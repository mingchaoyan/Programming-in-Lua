a = {1, 2, 3, 4, 5, 6, 7, 8}
N = #a

count = 1

function isplaceok (a, n, c)
  for i = 1, n - 1 do
    if (a[i] == c) or (a[i] - i == c - n) or (a[i] + i == c + n) then
      return false
    end
  end
  return true
end

function perm (a, k)
  if k == N then
    if isplaceok(a, k, a[k]) then
      io.write(count .. ":")
      count = count + 1
      for i = 1, N do
        io.write(a[i])
      end
      io.write("\n")
    end
  else
    for i = k, N do
      temp = a[k] 
      a[k] = a[i]
      a[i] = temp

      if isplaceok(a, k, a[k]) then
        perm(a, k + 1)
      end

      temp = a[k] 
      a[k] = a[i]
      a[i] = temp
    end
  end
end

perm(a, 1)


