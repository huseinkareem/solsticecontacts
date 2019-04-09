//
//  Contact.swift
//  SolsticeContacts
//
//  Created by Husein Kareem on 4/9/19.
//  Copyright © 2019 Husein Kareem. All rights reserved.
//

import Foundation

struct Contact: Codable {
    
    var name: String
    var companyName: String
    var isFavorite: Bool
    var smallImageURL: String
    var largeImageURL: String
    var emailAddress: String
    var birthDate: String
    var phone: Phone
    
    enum ContactCodingKeys: String, CodingKey {
        case name
        case companyName
        case isFavorite
        case smallImageURL
        case largeImageURL
        case emailAddress
        case birthDate
        case phone
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: ContactCodingKeys.self)
        name = try values.decode(String.self, forKey: .name)
        companyName = try values.decode(String.self, forKey: .companyName)
        isFavorite = try values.decode(Bool.self, forKey: .isFavorite)
        smallImageURL = try values.decode(String.self, forKey: .smallImageURL)
        largeImageURL = try values.decode(String.self, forKey: .largeImageURL)
        emailAddress = try values.decode(String.self, forKey: .emailAddress)
        birthDate = try values.decode(String.self, forKey: .birthDate)
        phone = try values.decode(Phone.self, forKey: .phone)
    }
}

struct Phone: Codable {
    var work: String
    var home: String
    var mobile: String
    
    enum PhoneCodingKeys: String, CodingKey {
        case work
        case home
        case mobile
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: PhoneCodingKeys.self)
        work = try values.decode(String.self, forKey: .work)
        home = try values.decode(String.self, forKey: .home)
        mobile = try values.decode(String.self, forKey: .mobile)
    }
}

struct Address: Codable {
    var street: String
    var city: String
    var state: String
    var country: String
    var zipCode: String
    
    enum AddressCodingKeys: String, CodingKey {
        case street
        case city
        case state
        case country
        case zipCode
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: AddressCodingKeys.self)
        street = try values.decode(String.self, forKey: .street)
        city = try values.decode(String.self, forKey: .city)
        state = try values.decode(String.self, forKey: .state)
        country = try values.decode(String.self, forKey: .country)
        zipCode = try values.decode(String.self, forKey: .zipCode)
    }
}
