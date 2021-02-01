//
//  DeleteView.swift
//  SwiftUI CRUD
//
//  Created by Roy Attila on 19/1/21.
//

import SwiftUI

struct DeleteView: View {
    @EnvironmentObject var employeeList: EmployeeList
    @State private var empIdTF = ""
    
    var body: some View {
        VStack {
            TextField("Employee ID", text: $empIdTF)
                .frame(maxHeight: 45)
                .border(Color.gray, width: 0.5)
                .padding([.horizontal, .bottom,.top], 30)
            Button(action: {
                let deleteEmployee = self.employeeList.employees.filter{ $0.emplId == self.empIdTF }
                if deleteEmployee.count > 0 {
                    self.employeeList.employees.removeAll { (employee) -> Bool in
                        employee.emplId == self.empIdTF
                    }
                }
            }, label: {
                OrangeButtonTextView(buttonText: "Delete")
            })
        }
    }
}

struct DeleteView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteView()
    }
}
