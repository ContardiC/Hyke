//
//  CardView.swift
//  Hyke
//
//  Created by Carlo Contardi on 22/03/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - CARD
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEADER
                VStack(alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(colors: [.colorGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom))
                        Spacer()
                        Button{
                            // ACTION: Show a Sheet
                            print("The button was pressed.")
                        }label: {
                            CustomButtomView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                }//: HEADER
                .padding(.horizontal, 30)
                // MARK: - MAIN CONTENT
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                // MARK: - FOOTER
                Button{
                    // ACTION: Generate a random number
                    print("The button was presses.")
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color:.black.opacity(0.25), radius: 0.25, x: 1, y: 2 )
                }
                .padding(.vertical)
                .padding(.horizontal, 30)
                .background(
                    LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(40)
                
            }//: ZSTACK
            
        } //: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
