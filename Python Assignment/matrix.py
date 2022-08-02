import pprint


def ThreeD(a, b, c):
    lst = [[['0' for col in range(a)] for col in range(b)] for row in range(c)]
    return lst


col1 = 3
col2 = 5
row = 8

pprint.pprint(ThreeD(col1, col2, row))
