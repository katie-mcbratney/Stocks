//
//  API.swift
//  Stocks
//
//  Created by Katie McBratney on 8/23/21.
//

import Foundation

struct API {
    static var baseUrl: String {
        return "https://www.alphavantage.co/query?"
    }
    
    static func symbolSearchURL(for searchKey: String) -> String {
        return urlBy(symbol: .search, searchKey: searchKey)
    }
    
    static func quoteUrl(for searchKey: String) -> String {
        return urlBy(symbol: .quote, searchKey: searchKey)
    }
    
    private static func urlBy(symbol: SymbolFunction, searchKey: String) -> String {
        let url = "\(baseUrl)function=\(symbol.rawValue)&apikey=\(key)"
        switch symbol {
        case .search:
            return "\(url)&keywords=\(searchKey)"
        case .quote:
            return "\(url)&symbol=\(searchKey)"
        }
    }
    
    enum SymbolFunction: String {
        case search = "SYMBOL_SEARCH"
        case quote = "GLOBAL_QUOTE"
    }
}

extension API {
    static var key: String {
        return "LD1AW2PIWZ8R5QH1"
    }
}
