//
//  SearchTextView.swift
//  Stocks
//
//  Created by Katie McBratney on 8/24/21.
//

import SwiftUI

struct SearchTextView: View {
    
    @Binding var searchTerm: String
    
    var body: some View {
        CustomTextFieldView(placeholder: Text("Search").foregroundColor(.gray), text: $searchTerm)
            .foregroundColor(.white)
            .padding(.leading, 40)
            .frame(height: 30)
            .background(ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 5).fill(Color.gray).opacity(0.6)
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
            })
    }
}

struct SearchTextView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextView(searchTerm: .constant(""))
    }
}
