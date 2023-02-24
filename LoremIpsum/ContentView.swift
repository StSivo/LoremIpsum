//
//  ContentView.swift
//  LoremIpsum
//
//  Created by Stefano Sivo on 22/02/23.
//

import SwiftUI

struct ContentView: View {
    
    private var names: [String] = ["Step","Mattia","Walter","Antonella","Angiolæ","Fede"]
    private var geometry: CGRect = UIScreen.main.bounds
    private let mainColor: Color = Color(red: 240/255, green: 80/255, blue: 128/255)
    private let mainColorDisabled: Color = Color(red: 240/255, green: 80/255, blue: 128/255, opacity: 0.3)
    @State var isStartSessionEnabled: Bool = false
    @State var selectedName: String = ""
    var body: some View {
        VStack {
            
            Text("CONNECT YOUR THREAD")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
            
            Image("ballOfWool")
                .resizable()
                .scaledToFit()
                .padding()
            
            Text("Active members to tie with")
                .font(.title3)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            List{
                ForEach(names, id: \.self){ name in
                    Button(name){
                        if selectedName == name {
                            self.isStartSessionEnabled.toggle()
                            self.selectedName = ""
                        } else {
                            self.isStartSessionEnabled.toggle()
                            self.selectedName = name
                        }
                    }
                    .listRowBackground(self.selectedName == name ? mainColor : Color.white)
                }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .frame(height: geometry.height/3)
            .padding()
            
            ZStack {
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(Color(UIColor.systemGroupedBackground))
                    .frame(height: geometry.height/15)
                    .shadow(radius: 2)
                Button(){
                    
                } label: {
                    Text("Start a session")
                        .foregroundColor(isStartSessionEnabled ? mainColor : mainColorDisabled)
                        .font(.title2)
                }.disabled(!isStartSessionEnabled)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
