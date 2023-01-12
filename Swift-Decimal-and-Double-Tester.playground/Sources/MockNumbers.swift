import Foundation


// Array of [9.001, 9.002, 9.003 ...... 10] with increment 0.001
public var generatedVal: [Double] {
    var newArray = [Double]()
    for index in 1...1000 {
        var doubleVal: Double {
            return 9 + Double(index) / 1000
        }
        newArray.append(doubleVal)
    }
    return newArray
}

//String Array of ["9.001", "9.002"..... 10] with increment 0.001 and rounded to 3 decimal point only
public var stringVal: [String] {
    return doubleVal.map({String(format: "%.3f", $0)})
}

public var doubleVal: [Double] {
    return stringVal.map({Double($0) ?? 0})
}

public var deciVal: [Decimal] {
    return stringVal.map({Decimal(string: $0) ?? 0})
}
