//
//  EVowelTest.swift
//  SwiftUI-ParkinSense
//
//  Created by Emnet.A on 10/17/23.
//

import SwiftUI

struct EVowelTest: View {
    @State private var fadeInOut = false
    var body: some View {
        NavigationView{
            ZStack{
                RecordAndStop(audioRecorder: AudioRecorder())
            Instruction2()

            ZStack{
               
                EVowel()
                
                TimerView()
                Goodjob()
                NextButtonI()
            }
        }

        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
struct Instruction2: View {
    @State private var fadeInOut = false
    var body: some View {
        VStack{
            Text(" The Next Vowel is coming Up")
                .font(.custom("Gurmukhi MN", size: 50))
        }.opacity(fadeInOut ? 0 : 1)
        .animation(Animation.easeInOut(duration: 7.4) .delay(1.2), value: fadeInOut)
        .onAppear(){
            fadeInOut = true

        }
    }
        
}


struct EVowel: View {
    @State private var fadeInOut = true
   
    var body: some View {
        ZStack(alignment: .center){
            
                ZStack(alignment: .center){
                    Rectangle()
                        .background(Color.black.opacity(0.5))
                        .frame(width: 700, height: 600)
                    Text("E")
                        .font(.custom("Palatino", size: 500))
                        .bold()
                        .font(.largeTitle)
                        .padding()
                        .frame(width: 680, height: 580)
                        .background(Color.white.opacity(0.85))
            
            }
            
        }.onAppear(){
            playSound(soundName: "ESound", extension: "mp3", delay: 9.0)
            fadeInOut = false
            
        }
        .opacity(fadeInOut ? 0 : 1)
            .animation(Animation.easeInOut(duration: 4.4) .delay(4.4), value: fadeInOut)
        
            .onAppear(){
                fadeInOut = false

            }
            .opacity(fadeInOut ? 1 : 0)
                .animation(Animation.easeInOut(duration: 30.4) .delay(4.4), value: fadeInOut)
            
                .onAppear(){
                    fadeInOut = false

                }
        

    }
}
struct NextButtonI: View {
    @State private var fadeInOut = true
    var body: some View {
        NavigationLink{
        IVowelTest()
            .navigationBarBackButtonHidden()
        
    } label: {
        Text("Next")
    }.foregroundColor(.white)
        .font(.title)
        .bold()
        .frame(width: 300, height: 50)
        .background(Color.purple)
        .cornerRadius(40)
        .position(x: 973, y:937)
        .opacity(fadeInOut ? 0 : 1)
        .animation(Animation.easeInOut(duration: 31.4) .delay(0.4), value: fadeInOut)
        
            .onAppear(){
                fadeInOut = false

            }.navigationViewStyle(StackNavigationViewStyle())
    }
}
#Preview {
    EVowelTest()
}