//
//  LargeButton.swift
//  MovieBooking
//
//  Created by Hanan Farizta on 24/06/24.
//

import SwiftUI

struct LargeButton: View {
    var selectedBorderColors: [Color] = [Color("pink1"), Color("pink1").opacity(0), Color("pink1").opacity(0)]
    
    var body: some View {
        Text("Reservation")
            .font(.body)
            .fontWeight(.medium)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: 60)
            .background(LinearGradient(colors: [Color("majentaColor"), Color("purple1")], startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(LinearGradient(colors: selectedBorderColors, startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2))
                    .frame(maxWidth: .infinity, maxHeight: 58)
            }
    }
}

#Preview {
    LargeButton()
}
