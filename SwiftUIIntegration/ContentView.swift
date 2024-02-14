//
//  ContentView.swift
//  SwiftUIIntegration
//
//  Created by Angelos Staboulis on 14/2/24.
//

import SwiftUI
import FBSDKLoginKit
struct ContentView: View {
    @State var login = FBLoginManager()
    var body: some View {
        VStack {
        
            Button(action: {
                login.facebookLogin()
            }, label: {
                Text("Facebook Login")
                .frame(width:300,height:45).background {
                    Color.blue
                }.foregroundStyle(.white)
                .cornerRadius(23.0)
            })
        }
       
    }
}

#Preview {
    ContentView()
}
