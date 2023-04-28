//
//  ViewModel.swift
//  StepperSample
//
//  Created by David Okun on 4/27/23.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var value: String
    
    var model: Model {
        didSet {
            updateStringValue()
        }
    }
    
    init(value: Int) {
        self.model = Model(value: value)
        self.value = String(value)
    }
    
    private func updateStringValue() {
        let string = String(model.value)
        self.value = string
    }
    
    public func incrementNumber() {
        model.value += 1
    }
    
    public func decrementNumber() {
        model.value -= 1
    }
}
