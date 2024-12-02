//
//  Movie.swift
//  MoviesAPP
//
//  Created by Onur ÇETİNKAYA on 2.12.2024.
//

import Foundation


struct Movie: Decodable{
    let title :String
    let categories: [String]
    let duration: String
    let rating : Double
    let summary: String
    let imageName: String
    
    var imageSmall: String{
        return imageName + "_small.jpg"
    }
    var imageWide: String{
        return imageName + "_wide.jpg"
    }
    var categoriesDescription: String{
        return categories.joined(separator: " | ")
    }
    enum CodingKeys: String, CodingKey {
        case title
        case categories
        case duration
        case rating
        case summary
        case imageName = "image_name"
    }
}
