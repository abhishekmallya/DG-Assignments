def divisible(n):
    for i in range(n):
        if i % 5 == 0 and i % 7 == 0:
            yield str(i) + ','


n = int(input())
x = divisible(n)
print(next(x), end='')
print(next(x), end='')
print(next(x), end='')
