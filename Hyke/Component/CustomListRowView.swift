//
//  CustomListRowView.swift
//  Hyke
//
//  Created by Carlo Contardi on 24/03/25.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - PROPERTIES
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String
    @State var rowTintColor: Color
    
    var body: some View {
        LabeledContent{
            // Content
            Text(rowContent)
                .foregroundColor(.primary)
                .fontWeight(.heavy)
        }label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List{
        CustomListRowView(rowLabel:
                            "Designer",
                          rowIcon: "paintpalette",
                          rowContent: "John Doe",
                          rowTintColor: .pink)
    }
}
