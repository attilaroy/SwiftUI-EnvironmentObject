//
//  OrangeButtonTextView.swift
//  SwiftUI CRUD
//
//  Created by Roy Attila on 19/1/21.
//

import SwiftUI

struct OrangeButtonTextView: View {
    var buttonText: String
    
    var body: some View {
        Text(buttonText)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, maxHeight: 45.0)
            .foregroundColor(.white)
            .background(Color.orange)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding([.horizontal, .bottom], 30)
    }
}


