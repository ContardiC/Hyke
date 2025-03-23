//
//  GradientButtonStyle.swift
//  Hyke
//
//  Created by Carlo Contardi on 23/03/25.
//  https://www.spacecoding.it

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Ternary Conditional Operator
                // Consition ? A : B
                configuration.isPressed ?
                // A: When user pressed the Button
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
                // B: When the Button is not pressed
                :
                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
