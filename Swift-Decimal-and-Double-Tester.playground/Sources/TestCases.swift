import Foundation


extension Double {
    func toDecimal() -> Decimal {
        let newString = String(self)
        return Decimal(string: newString) ?? 0
    }
}

extension Decimal {
    func toDouble() -> Double {
        return (self as NSDecimalNumber).doubleValue
    }
}

public func testDoubletoDecimal() {
    var incorrectCount = 0
    var incorrectDecimal: [Decimal] = []
    var correctDecimal: [Decimal] = []
    var newDecimal: [Decimal] = []
    for index in 1...1000 {
        let newIndex = mockDoubleInThousandwithThousandNum()[index-1].toDecimal()
        newDecimal.append(newIndex)
        if newIndex != mockDecimalInThousandwithThousandNum()[index-1] {
            incorrectCount += 1
            incorrectDecimal.append(newIndex)
            correctDecimal.append(mockDecimalInThousandwithThousandNum()[index-1])
        }
    }
    print(">>> Now printing correctness of converting decimal to double value <<<")
    print("\n\nIncorrectCount: \(incorrectCount)\n")
    if incorrectCount == 0 {
        print("100% passed")
    } else {
        print("IncorrectValues: \n\(incorrectDecimal)\n")
        print("CorrectValues: \n\(correctDecimal)\n")
        //    print(newDecimal)
    }
}

public func testDecimaltoDouble2() {
    var incorrectCount = 0
    var newDouble: [Double] = []
    var incorrectDouble: [Double] = []
    for index in 1...1000 {
        let newIndex = mockDecimalInThousandwithThousandNum()[index-1].toDouble()
        newDouble.append(newIndex)
        if newIndex != mockDoubleInThousandwithThousandNum()[index-1] {
            incorrectCount += 1
            incorrectDouble.append(newIndex)
        }
    }
    print("incorrectCount: \(incorrectCount)")
    print(incorrectDouble)
    print(newDouble)
}

public func testNSDecimaltoDouble2() {
    var incorrectCount = 0
    var incorrectDouble: [Double] = []
    var correctDouble: [Double] = []
    var newDouble: [Double] = []
    
    for index in 1...1000 {
        let newIndex = mockNSDecimalInThousandwithThousandNum()[index-1].doubleValue
        newDouble.append(newIndex)
        if newIndex != mockDoubleInThousandwithThousandNum()[index-1] {
            incorrectCount += 1
            incorrectDouble.append(newIndex)
            correctDouble.append(mockDoubleInThousandwithThousandNum()[index-1])
        }
    }
    print(">>> Now printing correctness of converting decimal to double value <<<")
//    print("CorrectValues: \n\(mockDoubleInThousandwithThousandNum()[0...99])")
    print("\n\nIncorrectCount: \(incorrectCount)\n")
    print("IncorrectValues: \n\(incorrectDouble)\n")
    print("CorrectValues: \n\(correctDouble)\n")
//    print(newDouble)
}

public func showExampleIncorrectValues() {
    let douVal: Double = 9.001
    let newdecVal = Decimal(string: "9.001") ?? 0
    let convertedVal = newdecVal.toDouble()

    print("Example showing a decimal value of 9.001 converting to double value")
    print("Decimal value: \(newdecVal) -> convert to Double: \(convertedVal)")
    print("Double values: \(douVal)")
    print("Is converted Double value: \(convertedVal) == Double value: \(douVal) ? \(convertedVal == douVal)")
    print("Is converted Double value: \(convertedVal) > Double value: \(douVal) ? \(convertedVal > douVal)")
    print("Is converted Double value: \(convertedVal) < Double value: \(douVal) ? \(convertedVal < douVal)")
}
