//
//  AuthService.swift
//  iOSApp
//
//  Created by Inas Ahmic on 26. 3. 2021..
//

import Foundation

class AuthService {
    
    var expiresAt: String?
    var reqToken: String?
    
    func refreshToken() {
        
        let urlString: String = "https://api.themoviedb.org/3/authentication/token/new?api_key=d406343e263966e23c87fce5a21b0bc9"
        let url: URL? = URL(string: urlString)
        var urlReqest: URLRequest = URLRequest(url: url!)
        
        urlReqest.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: urlReqest, completionHandler: { (data, response, error) in
            if error == nil, let unwrappedData = data {
                let dataParsed = try? JSONSerialization.jsonObject(with: unwrappedData, options: [])
                let dictionaries = dataParsed as? [String: Any]
                let expiresAt = dictionaries?["expires_at"]
                let requestToken = dictionaries?["request_token"]
                self.expiresAt = expiresAt as? String
                self.reqToken = requestToken as? String
                
            } else {
                print("Error occured -> \(String(describing: error?.localizedDescription))")
            }
        }).resume()
    }
}
