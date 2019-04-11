//
//  ContactAPI.swift
//  SolsticeContacts
//
//  Created by Husein Kareem on 4/9/19.
//  Copyright © 2019 Husein Kareem. All rights reserved.
//

import Foundation
import UIKit

typealias ContactCompletion = (_ contactInfo: Contacts?, _ error: Error?) -> Void

struct ContactAPI {
    
    private static var apiURLString = "https://s3.amazonaws.com/technical-challenge/v3/contacts.json"
    
    static func fetchContacts(completion: @escaping ContactCompletion) {
        guard let url = URL(string: ContactAPI.apiURLString) else {
            completion(nil, nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                completion(nil, error)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let contactData = try decoder.decode(Contacts.self, from: data)
                completion(contactData, error)
            } catch let err {
                completion(nil, err)
            }
        }.resume()
    }
}
