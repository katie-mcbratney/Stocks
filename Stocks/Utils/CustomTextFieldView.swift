//
//  CustomTextFieldView.swift
//  Stocks
//
//  Created by Katie McBratney on 8/24/21.
//

import SwiftUI

struct CustomTextFieldView: View {
    
    var placeholder: Text
    
    @Binding var text: String
    
    var editingChanged: (Bool) -> Void = { _ in }
    var commit: () -> Void = {}
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {placeholder}
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
