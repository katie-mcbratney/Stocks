//
//  GlobalQuote.swift
//  Stocks
//
//  Created by Katie McBratney on 8/23/21.
//

import Foundation

struct GlobalQuoteResponse: Codable {
    var quote: Quote
    
    private enum CodingKeys: String, CodingKey {
        case quote = "Global Quote"
    }
}


