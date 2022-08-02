

li = [12, 24, 35, 24, 88, 120, 155, 88, 120, 155]
x = []
for i in li:
    if i not in x:
        x.append(i)

print(x)


s = set(li)
print(s)

