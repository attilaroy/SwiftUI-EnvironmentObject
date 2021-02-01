//
//  Employee.swift
//  SwiftUI CRUD
//
//  Created by Roy Attila on 19/1/21.
//

import SwiftUI

class EmployeeList: ObservableObject {
    @Published var employees = [Employee]()
}

struct Employee: Codable, Hashable {
    var emplId = ""
    var empName = ""
}
