//
//  Ticket.swift
//  MovieBooking
//
//  Created by Hanan Farizta on 24/06/24.
//

import SwiftUI

struct Ticket: View {
    @State var title: String = "Thor"
    @State var subtitle: String = "Love and Thunder"
    @State var top: String = "thor-top"
    @State var bottom: String = "thor-bottom"
    @Binding var height: CGFloat
    
    var gradient: [Color] = [Color("cyan1"), Color("cyan1").opacity(0), Color("cyan1").opacity(0)]
    
    var body: some View {
        VStack(spacing: 0.0) {
            VStack(spacing: 4.0) {
                Text(title)
                    .fontWeight(.bold)
                
                Text(subtitle)
            }
            .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 30))
            .frame(width: 250, height: 325, alignment: .top)
            .foregroundColor(.white)
            .background(
                Image(top)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .mask(
                Image(top)
                    .resizable()
                    .frame(width: 250, height: 325)
            )
            .overlay {
                RoundedRectangle(cornerRadius: 40)
                    .stroke(LinearGradient(colors: gradient, startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2))
            }
            .cornerRadius(40, corners: [.topLeft, .topRight])
            
            Spacer(minLength: height)
            
            VStack(spacing: 10.0) {
                            Line()
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [7]))
                                .frame(width: 200,height: 1)
                                .opacity(0.6)
                            
                            HStack(spacing: 20.0) {
                                HStack(spacing: 4.0) {
                                    Text("Date:")
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("lightPurpleColor"))
                                    Text("April 23")
                                        .foregroundColor(.black)
                                }
                                HStack(spacing: 4.0) {
                                    Text("Time:")
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("lightPurpleColor"))
                                    Text("6 p.m.")
                                        .foregroundColor(.black)
                                }
                            }
                            
                            HStack(spacing: 20.0) {
                                HStack(spacing: 4.0) {
                                    Text("Row:")
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("lightPurpleColor"))
                                    Text("2")
                                        .foregroundColor(.black)
                                }
                                HStack(spacing: 4.0) {
                                    Text("Seats:")
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("lightPurpleColor"))
                                    Text("9, 10")
                                        .foregroundColor(.black)
                                }
                            }
                            
                            Image("Code")
                        }
                        .frame(width: 250, height: 135, alignment: .top)
                        .background(.ultraThinMaterial)
                        .background(
                            Image(bottom)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        )
                        .mask(
                            Image(bottom)
                                .resizable()
                                .frame(width: 250, height: 135)
                        )
        }
        .frame(height: 460)
        .font(.footnote)
        .shadow(radius: 10)
    }
}

#Preview {
    Ticket(
        title: "Thor",
        subtitle: "Love and Thunder",
        top: "thor-top",
        bottom: "thor-bottom",
        height: .constant(0),
        gradient: [
            Color("cyan1"), Color("cyan1").opacity(0), Color("cyan1").opacity(0)
        ]
    )
}

