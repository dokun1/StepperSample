//
//  ContentView.swift
//  StepperSample
//
//  Created by David Okun on 4/27/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.value)
            Stepper("The value") {
                viewModel.incrementNumber()
            } onDecrement: {
                viewModel.decrementNumber()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: .init(value: 42))
    }
}
