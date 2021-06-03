//
//  ContentView.swift
//  11-NavegationLink
//
//  Created by Cruz Torres on 30/05/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var animate = false
    @State var endSplash = false
    
    var body: some View {
        ZStack {
            Home()
            ZStack{
                Color("ColorRedBull")
                Image("Bulls-Logo")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: animate ? .fill : .fit)
                    .frame(width: animate ? nil : 100, height: animate ? nil : 100)
                
                // Scaling View ...
                    .scaleEffect(animate ? 3 : 1)
                // Setings width to avoid over size...
                    .frame(width: UIScreen.main.bounds.width)
            }
            .edgesIgnoringSafeArea(.all)
            .onAppear( perform: animateSplash)
            // hiding view after ffinished...
            .opacity(endSplash ? 0 : 1)
            if endSplash == true {
                NavigationView{
                    ZStack{
                        Color("ColorBlackBull")
                            .edgesIgnoringSafeArea(.all)
                        Image("Main Play")
                            .offset(x: 0, y: -280)
                        VStack {
                            Text("Those are the three biggest names on the 1997-98 Chicago Bulls roster, but the team was much deeper than that.")
                                    .foregroundColor(.white)
                                    .padding()
                            Text("Is bound to reignite interest in the Bulls and their historic drive to win their sixth NBA title in eight seasons.  Here’s a breakdown of that squad — the last Bulls team to win an NBA championship.")
                                    .foregroundColor(.white)
                                    .padding(.leading)
                                    .padding(.trailing)
                            
                            NavigationLink(destination: PLayersList()){
                                Text("Dream Team")
                                .font(.system(.headline, design: .rounded))
                                .fontWeight(.bold)
                                .frame(width: 340, height: 56)
                                .background(Color("ColorRedBull"))
                                .foregroundColor(.white)
                                .cornerRadius(28)
                                .padding(.top, 30)
                                .padding()
                            }
                        }.offset(x: 0, y: 110)
                    }
                }
            }
        }
    }
    
    func animateSplash() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            withAnimation(Animation.easeOut(duration: 0.55)){
                self.animate.toggle()
            }
            withAnimation(Animation.linear(duration: 0.45)){
                self.endSplash.toggle()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body: some View {
        VStack {
            HStack{
                Text("Chicago Bulls")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("ColorRedBull"))
                Spacer(minLength: 0)
            }
            .padding()
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(Color.white)
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.black.opacity(0.06).edgesIgnoringSafeArea(.all))
    }
}

