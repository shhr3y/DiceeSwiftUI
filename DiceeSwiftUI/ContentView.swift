//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Shrey on 26/06/20.
//  Copyright © 2020 Shrey. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber:Int = 1
    @State var rightDiceNumber:Int = 5
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceView(num: leftDiceNumber)
                    DiceView(num:rightDiceNumber)
                }.padding(.horizontal, 35.0)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }.background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    let num:Int
    
    var body: some View {
        Image("dice\(num)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
