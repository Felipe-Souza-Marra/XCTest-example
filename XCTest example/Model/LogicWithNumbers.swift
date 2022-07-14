//
//  LogicWithNumbers.swift
//  XCTest example
//
//  Created by Felipe Souza Marra on 12/07/22.
//

import Foundation
import SwiftUI

struct ValidationNumber {
    
    func greaterThan(_ number: Int?, in numberToCompare: Int = 100) throws -> Bool {
        
        guard let number = number else { throw NumberValidationError.notNumber }
        
        guard number > numberToCompare else { throw NumberValidationError.notGreater }
        
        return true
        
    }
    
    func lessThan(_ number: Int?, in numberToCompare: Int = 100) throws -> Bool {
        
        guard let number = number else { throw NumberValidationError.notNumber }
        
        guard number < numberToCompare else { throw NumberValidationError.notGreater }
        
        return true
        
    }
    
}

/// Erros para o resultado de um inteiro.
enum NumberValidationError: LocalizedError {
    
    case notNumber
    case notGreater
    case notLess
    
    var errorDescription: String? {
        
        switch self {
            
        case .notNumber:
            return "\n\nError: não tem número\n"
            
        case .notGreater:
            return "\n\nError: não é um número maior\n"
            
        case .notLess:
            return "\n\nError: não é um número menor\n"
            
        }
        
    }
    
}
