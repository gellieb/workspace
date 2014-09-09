nums = []

nums << 1
nums << 2
nums << 3
# [1,2,3]

p nums << (nums.pop) + (nums.pop)
[1] << (3 + 2)
[1,5]

p nums << (nums.pop) * (nums.pop)
[5]
