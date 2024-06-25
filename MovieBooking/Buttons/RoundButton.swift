//
//  RoundButton.swift
//  MovieBooking
//
//  Created by Hanan Farizta on 24/06/24.
//

import SwiftUI

struct RoundButton: View {
    @State var action: () -> Void = {}
    
    var gradientBorder: [Color] = [Color("cyan1"),Color("cyan1").opacity(0.1), Color("cyan1")]

    var body: some View {
        Button {
            action()
        } label: {
            Text("Buy")
                .font(.subheadline)
                .frame(width: 70, height: 70)
                .background(.ultraThinMaterial)
                .cornerRadius(40)
                .overlay(
                    Circle()
                        .trim(from: 0, to: CGFloat(0.5))
                        .stroke(LinearGradient(colors: gradientBorder, startPoint: .top, endPoint: .bottom), style: StrokeStyle(lineWidth: 2))
                        .rotationEffect(.degrees(135))
                        .frame(width: 68, height: 68)
                )
                .padding(.horizontal, 15)
                .background(
                    Rectangle()
                        .fill(.black.opacity(0.3))
                        .frame(width: 100, height: 100)
                        .clipShape(CustomRoundedCorners(radius: 40, corners: [.topLeft, .bottomLeft]))
                )
        }
    }
}

struct CustomRoundedCorners: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

#Preview {
    RoundButton()
}
