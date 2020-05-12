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
        let parameterDictionary = NSMutableDictionary()
        parameterDictionary.setValue(12, forKey: "event_id")
        parameterDictionary.setValue(00, forKey: "user_id")
        parameterDictionary.setValue(28.1245, forKey: "latitude")
        parameterDictionary.setValue(78.1245, forKey: "longitude")
            
        var request = URLRequest(url: serviceUrl)
        request.httpMethod = "POST"
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameterDictionary, options: []) else {
            return
        }
        request.httpBody = httpBody
        
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
}
