import random
length = 10
result = set()

keys = ["l","I","1","O","o","0","$"]

for o in range(1,100000):
    for len in range(6,13):
        tmp = keys[random.randint(0,1)]
        for i in range(1, len+1):
            tmp += random.choice(keys)
        result.add(tmp)

with open("obfuscation.dict",mode='w+',encoding='utf-8') as f:
    f.writelines("\n".join(result))
    f.flush()

print("Generate \"obfuscation.dict\" successfully!")
