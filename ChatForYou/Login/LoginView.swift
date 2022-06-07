//
//  LoginView.swift
//  ChatForYou
//
//  Created by admin on 06.06.2022.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var actionButtondontHaveAccount: Bool = false
       var body: some View {
           NavigationView {
               ZStack {
                  Image("backRoundLogin")
                       .resizable()
                       .ignoresSafeArea()
                   VStack{
                       VStack(spacing:15){
                          
                           titleText
                           emailTextFild
                           passwordTextFild
                           assistButton
                           continueButton

                       }
                           .background(Color.white)
                           .cornerRadius(25)
                           .padding([.leading,.trailing],45)
                       
                       dontHaveAccount
                       createAccount
                       
                       NavigationLink(
                           destination:
                               RegisterView()
                                   .navigationBarBackButtonHidden(actionButtondontHaveAccount),
                           isActive: $actionButtondontHaveAccount
                       ) {}
                   }
               }
           }
                   
       }}

private extension LoginView {
    
    var titleText:some View {
        VStack{
            Text("Login")
                .font(.system(size: 34))
                .italic()
                .bold()
                .padding(.top,35)
        }
    }
    
    var emailTextFild: some View {
        VStack {
            TextField("Email",text: $email)
                .padding()
                .frame(height: 50)
                .background(Color.blue.opacity(0.1))
                .cornerRadius(.infinity)
                .padding([.leading,.trailing],12)
                .font(.system(size: 14, weight: .heavy))
                .foregroundColor(.blue)
        }
    }
    
    var passwordTextFild: some View {
        VStack {
            TextField("Password",text: $password)
                .padding()
                .frame(height: 50)
                .background(Color.blue.opacity(0.1))
                .cornerRadius(.infinity)
                
                .padding([.leading,.trailing],12)
                .font(.system(size: 14, weight: .heavy))
                .foregroundColor(.blue)

        }
    }
    
    var continueButton: some View {
        Button(action: {}) {
            Text("Continue")
                .bold()
                .padding([.leading,.trailing],75)
                .frame( height: 50)
                .background(Color.blue)
                .cornerRadius(.infinity)
                .font(.system(size: 18))
                .foregroundColor(Color.white)
                .padding(.bottom,15)

        }
    }
    
    var assistButton: some View {
        Button(action: {}) {
            Text("Forgot password")
                .font(.system(size: 12))
                .foregroundColor(Color.black)
        }
    }
    
    var dontHaveAccount: some View {
        Button(action: {self.actionButtondontHaveAccount = true}) {
            Text("Don’t have an account?")
                .padding(.top,35)
                .font(.system(size: 14))
                .foregroundColor(Color.whiteColor)
        }
    }
    
    var createAccount: some View {
        Button(action: {}) {
            Text("Create a new one")
                .font(.system(size: 14))
                .bold()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
