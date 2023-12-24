//
//  ContentView.swift
//  AnimsUI
//
//  Created by gio khukhia on 12/25/23.
//

//READ Me პრევიუზე ძაან ჩქარია მაგრამ გაშვებისას ნელი თუ გაშვებაზეც ჩქარი იქნება duration 1.5 არი ვიდეოზე რა შედეგიცაა ეგ როაიღოს

import SwiftUI

struct ContentView: View {
    @State private var animate = false

    var body: some View {
        VStack {
            Spacer()

            Text("TBC IT Academy")
                .foregroundColor(animate ? .red : .blue)
                .offset(y: animate ? -20 : 20)
                .scaleEffect(animate ? 1.5 : 1)
                .animation(
                    Animation.easeInOut(duration: 0.3)
                        .repeatForever(autoreverses: true),
                    value: animate
                )

            Spacer()
        }
        .onAppear {
            self.animate.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
