//
//  News.swift
//  Stocks
//
//  Created by Katie McBratney on 8/24/21.
//

import Foundation

struct News: Identifiable, Codable {
    var id: UUID {return UUID()}
    var title: String
    var url: String
    var urlToImage: String?
    var imageUrl: String {
        return urlToImage?.replacingOccurrences(of: "http://", with: "https://") ?? "https://www.nasa.gov/sites/default/files/styles/image_card_4x3_ratio/public/thumbnails/image/solar_eclipse_may10_2021.png"
    }
}


