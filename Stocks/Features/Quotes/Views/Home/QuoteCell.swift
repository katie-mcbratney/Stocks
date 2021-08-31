//
//  QuoteCell.swift
//  Stocks
//
//  Created by Katie McBratney on 8/24/21.
//

import SwiftUI

struct QuoteCell: View {
    
    var quote: Quote
    
    var body: some View {
        HStack {
            Text(quote.symbol)
                .font(.body)
                .bold()
            Spacer()
            Spacer()
            
            VStack {
                Text(quote.price)
                    .bold()
                Text(quote.change)
                    .padding(.horizontal)
                    .frame(width: 100)
                    .background(RoundedRectangle(cornerRadius: 5)
                                    .fill(Double(quote.change)! > 0.0 ? Color.green : Color.red),
                                alignment: .trailing)
            }
        }
    }

}

struct QuoteCell_Previews: PreviewProvider {
    static var previews: some View {
        QuoteCell(quote: Quote(symbol: "AAPL", open: "open", high: "high", low: "low", price: "price", change: "0.5", changePercent: "70"))
    }
}
