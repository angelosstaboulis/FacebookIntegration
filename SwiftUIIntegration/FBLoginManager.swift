//
//  LoginManager.swift
//  SwiftUIIntegration
//
//  Created by Angelos Staboulis on 14/2/24.
//

import Foundation
import FBSDKLoginKit
final class FBLoginManager {
    let loginManager = LoginManager()
    func facebookLogin() {
        let configuration = LoginConfiguration(permissions: ["email"], tracking: .enabled)
        loginManager.logIn(viewController: nil, configuration: configuration) { result in
            switch result {
            case .cancelled:
                print("User cancelled login.")
            case .success(let grantedPermissions, let declinedPermissions, let accessToken):
                print("Logged in! \(grantedPermissions) \(declinedPermissions) \(String(describing: accessToken))")
                GraphRequest(graphPath: "me", parameters:  ["fields": "id, name, first_name"]).start { connection, result, error in
                    if (error == nil){
                        let fbDetails = result as! NSDictionary
                        print(fbDetails)
                    }
                }
            case .failed(let error):
                print(error)
            }
        }
       
       
    }
}
