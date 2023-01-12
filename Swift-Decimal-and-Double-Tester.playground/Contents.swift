import Foundation

/// The problem now is that we have an object declare prices as Double instead of Decimal
/// We only wanted to make changes to validate Loop order func, so the object is deemed not to be amended by any chances - price remained as Double
/// But in the validation, we need to do Arithmetic and comparison with Decimal values, so
/// The purpose of this is to test which conversion  is better :
/// (i) Decimal to Double
/// (ii) Double to Decimal

/// generate Array of Decimal values
/// generate Array of Double values
/// Convert to another value type
///
/// test the values with Arithmetic
/// (i) >
/// (ii) <
/// (iii) ==


///Conversion functions
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

func printReportDecimaltoDouble() {
    testNSDecimaltoDouble2()
    showExampleIncorrectValues()
}

func printReportDoubletoDecimal() {
    testDoubletoDecimal()
}

printReportDecimaltoDouble()
printReportDoubletoDecimal()

