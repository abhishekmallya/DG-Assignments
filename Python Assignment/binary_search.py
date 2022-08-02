

def binary_search(l, low, high, key):
    if high >= low:

        mid = (high + low) // 2
        if l[mid] == key:
            return mid
        elif l[mid] > key:
            return binary_search(l, low, mid - 1, key)
        else:
            return binary_search(l, mid + 1, high, key)
    else:
        return -1


l = [7, 13, 24, 31, 45, 55, 65, 77, 89, 100]
key = 45
s = binary_search(l, 0, len(l)-1, key)
print("index is " + str(s))
