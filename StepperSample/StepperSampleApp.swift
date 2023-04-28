//
//  StepperSampleApp.swift
//  StepperSample
//
//  Created by David Okun on 4/27/23.
//

import SwiftUI

@main
struct StepperSampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ViewModel(value: 42))
        }
    }
}
