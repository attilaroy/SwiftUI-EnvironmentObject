//
//  UpdateView.swift
//  SwiftUI CRUD
//
//  Created by Roy Attila on 19/1/21.
//

import SwiftUI

struct UpdateView: View {
    @EnvironmentObject var employeeList: EmployeeList
    @State private var empIdTF = ""
    @State private var empNameTF = ""
    @State private var showingAlert = false
    
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
                self.employeeList.employees = self.employeeList.employees.map {
                    if $0.emplId == self.empIdTF {
                        showingAlert = true
                        return Employee(emplId: self.empIdTF, empName: self.empNameTF)
                    } else {
                        return $0
                    }
                }
            }, label: {
                OrangeButtonTextView(buttonText: "Update")
            })
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Success"), message: Text("Employee Details Updated"), dismissButton: .default(Text("Ok")) {
                self.empIdTF = ""
                self.empNameTF = ""
            })
        }
    }
}

struct UpdateView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateView()
    }
}
