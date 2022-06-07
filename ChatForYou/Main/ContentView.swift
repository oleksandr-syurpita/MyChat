//
//  ContentView.swift
//  ChatForYou
//
//  Created by admin on 06.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var actionLoginButton: Bool = false
    @State private var actionRegisterButton: Bool = false
    var body: some View {
        NavigationView {
            ZStack {
                Image("backgRoundMain")
                .resizable()
                .ignoresSafeArea()
                VStack {
                    mainText
                    buttomLogin
                    NavigationLink(
                        destination:
                            LoginView()
                                .navigationBarBackButtonHidden(actionLoginButton),
                        isActive: $actionLoginButton
                    ) {}
                    
                    NavigationLink(
                        destination:
                            RegisterView()
                                .navigationBarBackButtonHidden(actionRegisterButton),
                        isActive: $actionRegisterButton
                    ) {}
                }
            }
        }
    }
}
 private extension ContentView {
    
     var mainText: some View {
         VStack {
             HStack {
                 Text("Chat for you")
                     .font(.system(size: 34, weight: .bold))
                     .foregroundColor(.whiteColor)
                     .padding([.top,.leading], 30)
                    Spacer()
             }
                Spacer()
         }
     }
     
    var buttomLogin: some View {
        VStack(spacing: 20) {
            Button(action: {self.actionLoginButton = true}) {
                Text("Login")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(Color.whiteColor)
            }.frame(width: 100, height: 50, alignment: .center)
                .padding([.leading,.trailing], 75)
                .background(Color.redColor)
                .cornerRadius(.infinity)
                buttomRegister
                .padding([.bottom], 20)
        }
    }
     
     var buttomRegister: some View {
         VStack {
             Button(action: {self.actionRegisterButton = true}) {
                 Text("Register")
                     .font(.system(size: 16, weight: .medium))
                     .foregroundColor(Color.whiteColor)
             }
                 .frame(width: 100, height: 50, alignment: .center)
                 .padding([.leading,.trailing], 75)
                 .background(Color.redColor)
                 .cornerRadius(.infinity)
         }
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
