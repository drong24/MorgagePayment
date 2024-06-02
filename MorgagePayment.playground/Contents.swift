/*
 Loan Calculator
 author: Daisy Rong
 */

import UIKit

func calc(loanAmount: Int, numOfPayments: Int, interestRate: Float) -> Float {
    let numer = interestRate * pow(1 + interestRate, Float(numOfPayments))
    let denom = pow(1 + interestRate, Float(numOfPayments)) - 1
    let result = Float(loanAmount) * numer / denom
    return result
}

print(calc(loanAmount: 20000, numOfPayments: 2, interestRate: 0.044 / 12))
print(calc(loanAmount: 150000, numOfPayments: 30, interestRate: 0.05))
