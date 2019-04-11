import Foundation

typealias Contacts = [Contact]

struct Contact: Codable {
    let name: String
    let id: String
    let companyName: String?
    let isFavorite: Bool
    let smallImageURL: String
    let largeImageURL: String
    let emailAddress: String
    let birthdate: String
    let phone: Phone
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
    let state: String
    let country: String
    let zipCode: String
}

struct Phone: Codable {
    let work: String?
    let home: String?
    let mobile: String?
}
