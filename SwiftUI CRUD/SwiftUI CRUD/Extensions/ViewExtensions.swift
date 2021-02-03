//
//  ViewExtensions.swift
//  SwiftUI CRUD
//
//  Created by Roy Attila on 1/2/21.
//

import Foundation
import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

