//
//  MockQuoteManager.swift
//  Stocks
//
//  Created by Katie McBratney on 8/23/21.
//

import Foundation

final class MockQuoteManager: QuoteManagerProtocol, ObservableObject {
 
    @Published var quotes: [Quote] = []
    
    func download(stocks: [String], completion: @escaping (Result<[Quote], NetworkError>) -> Void) {
        let aapl = Quote(symbol: "AAPL", open: "135.90", high: "136.39", low: "133.77", price: "135.13", change: "-0.26", changePercent: "-0.19%")
        let goog = Quote(symbol: "GOOG", open: "135.90", high: "136.39", low: "133.77", price: "135.13", change: "0.26", changePercent: "-0.19%")
        
        for _ in 0..<8 {
            quotes.append(contentsOf: [aapl, goog])
        }
    }
}
