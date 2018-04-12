s='abcabcb'

used = {}
max_length = start = 0
for i, c in enumerate(s):
    if c in used and start <= used[c]:
        start = used[c] + 1
    else:
        max_length = max(max_length, i - start + 1)

    used[c] = i

print max_length