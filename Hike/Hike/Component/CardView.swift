//
//  CardView.swift
//  Hike
//
//  Created by Igor Shulumba on 12.10.2024.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES

    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isSHowingSheet: Bool = false

    // MARK: - FUNCTIONS
    
    func randomImage() {
        print("--- Button was pressed ---")
        print("Satus: Old Image Number = \(imageNumber)")
        repeat {
            randomNumber = Int.random(in: 1...5)
            print("Action: Random Number Generated = \(randomNumber)")
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
        print("Result: New image number = \(imageNumber)")
    }

    var body: some View {
        // MARK: - CARD
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight, .customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                        )
                        
                        Spacer()
                        
                        Button {
                            // ACTION: Show a Sheet
                            print("The button was pressed")
                            isSHowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isSHowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER
                .padding(.horizontal, 30)
                
                // MARK: MAIN CONTENT
                
                ZStack {
                    ZStack {
                        CustomCircleView()
                        Image("image-\(imageNumber)")
                            .resizable()
                            .scaledToFit()
                            .animation(.default, value: imageNumber)
                    }
                    
                } //: CARD
                
                
                // MARK: FOOTER
                
                Button {
                    // ACTION: Generate a random number
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: .black, radius: 0.25, x: 1, y: 2)
                    
                }
                .buttonStyle(GradientButton())
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
