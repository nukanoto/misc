print("安全率計算するよくん")

print("想定荷重(N): ", end="")
expected = float(input())

i = 0
while True:
    i+=1
    print("")
    print("---")
    print("")
    print("評価{}".format(i))

    # print("強度(MPa): ", end="")
    # strength = float(input())
    print("破壊荷重(N): ", end="")
    destruction = float(input())

    print("安全率: {:.4g}".format(destruction/expected))

