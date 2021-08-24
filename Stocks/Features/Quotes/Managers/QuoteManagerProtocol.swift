//
//  QuoteManagerProtocol.swift
//  Stocks
//
//  Created by Katie McBratney on 8/23/21.
//

import Foundation

protocol QuoteManagerProtocol {
    var quotes: [Quote] {get set}
    func download(stocks: [String], completion: @escaping (Result<[Quote], NetworkError>) -> Void)
}
