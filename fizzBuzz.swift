for i in 1...100{
    switch i{
    case _ where i.isMultiple(of:3)&&i.isMultiple(of:5):
        print("FizzBuzz")
    case _ where i.isMultiple(of:3):
        print("Fizz")
    case _ where i.isMultiple(of:5):
        print("Buzz")
    default:
        print(i)
    }
}
