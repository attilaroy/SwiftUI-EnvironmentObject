//
//  ShowView.swift
//  SwiftUI CRUD
//
//  Created by Roy Attila on 19/1/21.
//

import SwiftUI

struct ShowView: View {
    @EnvironmentObject var employeeList: EmployeeList
    
    var body: some View {
        List(employeeList.employees, id: \.self) { employee in
            Text(employee.empName)
        }
    }
}

struct ShowView_Previews: PreviewProvider {
    static var previews: some View {
        ShowView()
    }
}
