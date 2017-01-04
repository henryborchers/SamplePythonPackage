import greet


def main():
    name = input("What's your name: ")
    if name:
        print(greet.say_hi(name))
    else:
        print("Ok, never mind.")

if __name__ == '__main__':
    main()