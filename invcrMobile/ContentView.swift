//
//  ContentView.swift
//
//  Created by Oren Paley on 4/16/24.
//

import SwiftUI

struct ContentView: View {
   
    @StateObject var invoice = Invoice()
    var body: some View {
        ZStack {
            Color(red: 0.4627, green: 0.8392, blue: 1.0)
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("invcr").font(.largeTitle)
                Spacer()
                Text("create a saveable PDF of your invoice").font(.headline)
                Text("with ease").font(.title).foregroundColor(.pink).opacity(0.7)
                    .italic()
                Spacer()
                NavigationLink("make invoice", destination: invcr())
                    .foregroundColor(.blue)
                    .padding()
                    .font(.title)
                    .border(Color.blue)
                    .background()
                Spacer()
            }
        }
       
    }
}
 
#Preview {
    ContentView()
}
