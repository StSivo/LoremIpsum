//
//  ContentView.swift
//  LoremIpsum
//
//  Created by Stefano Sivo on 22/02/23.
//

import SwiftUI

struct OnBoardingView: View {
    
    private var geometry: CGRect = UIScreen.main.bounds
    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    Text("An oriental legend tells that since birth each of us is linked to their soul mates by an invisible red thread.")
                        .padding(.horizontal, 65)
                        .font(.system(size: 20))
                        .fontWeight(.light)
                    Text("Stronger than adversity, this thread of fate will lead them to find each other sooner or later.")
                        .padding(.horizontal, 65)
                        .font(.system(size: 20))
                        .fontWeight(.light)
                    Text("An indestructible thread for an indissoluble bond.")
                        .padding(.horizontal, 65)
                        .font(.system(size: 20))
                        .fontWeight(.light)
                    Text("Connect your thread to keep in touch with your mate")
                        .padding(.horizontal, 65)
                        .font(.system(size: 20))
                        .fontWeight(.light)
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                NavigationLink {
                    Prova()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 13)
                            .frame(width: geometry.width * 0.9, height: geometry.height * 0.06)
                            .foregroundColor(Color(uiColor: .systemGray6))
                            .shadow(radius: 7, y: 7)

                        Text("Skip Intro")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.accentColor)
                    }
                }
                
            }
        }
    }
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color.accentColor)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.lightGray
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
