enum sqrtErrors: Error {
    case outOfRange
    case noRoot
}

func sqrt(_ n: Int) throws -> Int {
    if n < 1 || n > 10000 {
        throw sqrtErrors.outOfRange
    }
    
    for i in 1...n {
        if i * i == n {
            return i
        }
    }
    
    throw sqrtErrors.noRoot
}

do {
    let root = try sqrt(10000)
    print("Square root is \(root)")
} catch sqrtErrors.outOfRange {
    print("Error: Number is out of bounds.")
} catch sqrtErrors.noRoot {
    print("Error: No integer square root found.")
} catch {
    print("An unexpected error occurred.")
}
