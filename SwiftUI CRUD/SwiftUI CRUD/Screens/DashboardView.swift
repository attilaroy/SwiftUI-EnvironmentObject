//
//  Dashboard.swift
//  SwiftUI CRUD
//
//  Created by Roy Attila on 18/1/21.
//

import SwiftUI

struct DashboardView: View {
    private var employeeList = EmployeeList()
    
    var body: some View {
        VStack {
            NavigationLink(destination: CreateView().environmentObject(self.employeeList)) {
                OrangeButtonTextView(buttonText: "Create")
            }
            NavigationLink(destination: ShowView().environmentObject(self.employeeList)) {
                OrangeButtonTextView(buttonText: "Show")
            }
            NavigationLink(destination: UpdateView().environmentObject(self.employeeList)) {
                OrangeButtonTextView(buttonText: "Update")
            }
            NavigationLink(destination: DeleteView().environmentObject(self.employeeList)) {
                OrangeButtonTextView(buttonText: "Delete")
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
