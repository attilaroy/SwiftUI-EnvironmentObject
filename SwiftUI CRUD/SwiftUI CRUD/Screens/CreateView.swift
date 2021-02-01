//
//  CreateView.swift
//  SwiftUI CRUD
//
//  Created by Roy Attila on 19/1/21.
//

import SwiftUI

struct CreateView: View {
    @EnvironmentObject var employeeList: EmployeeList
    @State private var empIdTF = ""
    @State private var empNameTF = ""
    
    var body: some View {
        VStack {
            TextField("Employee ID", text: $empIdTF)
                .frame(maxHeight: 45)
                .border(Color.gray, width: 0.5)
                .padding([.horizontal, .bottom,.top], 30)
            TextField("Employee Name", text: $empNameTF)
                .frame(maxHeight: 45)
                .border(Color.gray, width: 0.5)
                .padding([.horizontal, .bottom], 30)
            Button(action: {
                self.employeeList.employees.append(Employee(emplId: empIdTF, empName: empNameTF))
            }, label: {
                OrangeButtonTextView(buttonText: "Create")
            })
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
