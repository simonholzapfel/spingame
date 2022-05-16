//
//  ContentView.swift
//  Shared
//
//  Created by Simon Holzapfel on 15.05.22.
//

import SwiftUI

struct ContentView: View {
    private let icons = ["apple", "cherry", "star"];
    @State private var state0 = 0;
    @State private var state1 = 1;
    @State private var state2 = 2;
    @State private var score = 100;
    
    func spin(){
        state0 = Int.random(in: 0..<icons.count)
        state1 = Int.random(in: 0..<icons.count)
        state2 = Int.random(in: 0..<icons.count)
        
        if( state0 == state2 && state1 == state2){
            score += 100
        }
        else{
            score -= 100
        }
    }
    
    var body: some View {
        VStack{
            Spacer()
            Text("Your Score: " + String(score))
            Spacer()
            
            HStack{
                Spacer()
                Image(icons[state0])
                Spacer()
                Image(icons[state1])
                Spacer()
                Image(icons[state2])
                Spacer()
            }
            Spacer()
            
            Button("Spin", action: spin)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
