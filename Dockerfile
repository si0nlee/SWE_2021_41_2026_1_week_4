FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    number = set()\n\
    while n != 1:\n\
        if n in number:\n\
            return False\n\
        number.add(n)\n\
        n = sum(int(d)**2 for d in str(n))\n\
    return True\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]