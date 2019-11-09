//
//  Document.swift
//  codableDocument
//
//  Created by Olivia Bishop on 11/8/19.
//  Copyright © 2019 Olivia Bishop. All rights reserved.
//

import Foundation




struct Document: Decodable, CustomStringConvertible {

    
    var uuid: String
    var dates: Dates
    var title: String
    var summary: String
    var metadata: Metadata
    var authors: [Author]
    var copyright: Copyright
    var entities: [Entity]
    
    var description: String {
       
        
        let data = "Uuid: \(uuid) \n\n Dates: \n Date Created: \(dates.created) \n Date Updated: \(dates.updated) \n\n Title: \(title) \n Summary: \(summary) \n Metadata: \n Topic: \(metadata.topic)\n Field: \(metadata.field) \n\n Authors: \n\n Name: \(authors[0].name) \n Contribution:\(authors[0].contribution) \n Contacts: \(authors[0].contacts) \n\n Name: \(authors[1].name) \n  Contribution: \(authors[1].contribution) \n Contacts: \(authors[1].contacts) \n\n Copyright:\n Owner: \(copyright.owner) \n Start Year: \(copyright.startYear) \n End Year: \(copyright.endYear) \n License: \(copyright.license) \n\n Entities: \(entities)"
               return data
    }
    
    
    
    enum CodingKeys: String, CodingKey {
        case uuid
        case dates
        case title
        case summary
        case metadata
        case authors
        case copyright
        case entities
    }
}

struct Dates: Codable {
    var created: String
    var updated: String
    
    enum CodingKeys: String, CodingKey {
        case created
        case updated
    }
}

struct Metadata: Codable {
    var topic: String
    var field: String
    
    enum CodingKeys: String, CodingKey {
        case topic
        case field
    }
}

struct Author: Codable {
    var name: String
    var contribution: String
    var contacts: [Contact]
    
    enum CodingKeys: String, CodingKey {
        case name
        case contribution
        case contacts
    }
}

struct Contact: Codable {
    var method: String
    var label: String
    var address: String?
    var number: String?
    
    enum CodingKeys: String, CodingKey {
        case method
        case label
        case address
        case number
    }
}

struct Copyright: Codable {
    var owner: String
    var startYear: Int
    var endYear: Int
    var license: String
    
    enum CodingKeys: String, CodingKey {
        case owner
        case startYear = "start-year"
        case endYear = "end-year"
        case license
    }
}

struct Entity: Codable {
    var type: String
    var label: String?
    var properties: Properties?
    var content: Content?
    var source: Source?
    
    enum CodingKeys: String, CodingKey {
        case type
        case label
        case properties
        case content
        case source
    }
}

struct Content: Codable {
    var contentType: String
    var contentEncoding: String
    var data: String
    
    enum CodingKeys: String, CodingKey {
        case contentType = "content-type"
        case contentEncoding = "content-encoding"
        case data
    }
}



struct Properties: Codable {
    var size: Int?
    var width: String?
    var height: String?
    
    enum CodingKeys: String, CodingKey {
        case size
        case width
        case height
    }
}





struct Source: Codable {
    var url: String
    
    enum CodingKeys: String, CodingKey {
        case url
    }
}


 
 

