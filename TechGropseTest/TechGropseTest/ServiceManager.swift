//
//  ServiceManager.swift
//  TechGropseTest
//
//  Created by Manoj Shivhare on 12/05/20.
//  Copyright © 2020 Manoj Shivhare. All rights reserved.
//

import Foundation

public struct WebServiceManager {

    static func callPostServiceToGetData(complitionHandler: @escaping (EventModel)->()){
        guard let serviceUrl = URL(string: "http://saudicalendar.com/api/user/getEventDetail") else { return }
        
        let parameterDictionary: [String: Any] = [
            "event_id": 12,
            "user_id": 00,
            "latitude":28.1245,
            "longitude":78.1245
        ]
            
        var request = URLRequest(url: serviceUrl)
        request.httpMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        let postString = self.getPostString(params: parameterDictionary)
        request.httpBody = postString.data(using: .utf8)
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let data = data {
                do {
                    let json = try JSONDecoder().decode(EventModel.self, from: data)
                    print(json as Any)
                    complitionHandler(json)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
    
    static func getPostString(params:[String:Any]) -> String
    {
        var data = [String]()
        for(key, value) in params
        {
            data.append(key + "=\(value)")
        }
        return data.map { String($0) }.joined(separator: "&")
    }
}
