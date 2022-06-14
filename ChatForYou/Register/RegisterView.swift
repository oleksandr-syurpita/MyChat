//
//  RegisterView.swift
//  ChatForYou
//
//  Created by admin on 06.06.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var email: String = ""
    @State private var passwords: String = ""
    @State private var passwrodAgain: String = ""
    @State private var actionButtonYouhave: Bool = false

    var body: some View {
        ZStack {
            Image("backgRoundRegister")
                .resizable()
                .ignoresSafeArea()
            VStack {
                viewBackground
            }
        }
    }
}


private extension RegisterView {
    
    var viewBackground: some View {
            ZStack {
                Image("backgRoundRegister")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Title
                    emailTextFild
                    passwordTextFild
                    passwordAgainTextFild
                    buttonContinue
                    buttonHaveAccount
                    NavigationLink(
                        destination:
                            LoginView()
                                .navigationBarBackButtonHidden(actionButtonYouhave),
                        isActive: $actionButtonYouhave
                    ) {}
                }
            }
        
    }
    var emailTextFild: some View {
        VStack {
            TextField("Email",text: $email)
                .padding()
                .frame(height: 50)
                .background(Color.whiteColor)
                .cornerRadius(.infinity)
                .padding([.leading,.trailing],60)
                .font(.system(size: 14, weight: .heavy))
                .foregroundColor(.blue)
        }
    }
    
    var passwordTextFild: some View {
        VStack {
            TextField("Password",text: $passwords)
                .padding()
                .frame(height: 50)
                .background(Color.whiteColor)
                .cornerRadius(.infinity)
                .padding([.leading,.trailing],60)
                .font(.system(size: 14, weight: .heavy))
                .foregroundColor(.blue)
        }
    }
    
    var passwordAgainTextFild: some View {
        VStack {
            TextField("Again Password",text: $passwrodAgain)
                .padding()
                .frame(height: 50)
                .background(Color.whiteColor)
                .cornerRadius(.infinity)
                .padding([.leading,.trailing],60)
                .font(.system(size: 14, weight: .heavy))
                .foregroundColor(.blue)
        }
    }
    
    var Title: some View {
        VStack {
            Text("Register")
                .font(.system(size: 34, weight: .bold))
                .foregroundColor(Color.whiteColor)
        }
    }
    
    var buttonContinue: some View {
        VStack {
            Button(action: {}) {
                Text("Continue")
                    .padding()
                    .frame(height: 50)
                    .padding([.leading,.trailing],60)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color.whiteColor)
                    .background(Color.redColor)
                    .cornerRadius(.infinity)


            }
        }
    }
    
    var buttonHaveAccount: some View {
        VStack {
            Button(action: {
                self.actionButtonYouhave = true
            }) {
                Text("You have account ?")
                    .padding()
                    .frame(height: 50)
                    .padding([.leading,.trailing],60)
                    .font(.system(size: 18, weight: .bold))
                  


            }
        }
    }

}
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
