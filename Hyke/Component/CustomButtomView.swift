//
//  CustomButtomView.swift
//  Hyke
//
//  Created by Carlo Contardi on 22/03/25.
//  https://www.spacecoding.it
import SwiftUI

struct CustomButtomView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(colors: [.white, .customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
            Circle()
                .stroke(LinearGradient(colors: [.white, .customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom), lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [.white, .customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
        } //: ZSTACK
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtomView()
        .previewLayout(.sizeThatFits)
        .padding()
}
