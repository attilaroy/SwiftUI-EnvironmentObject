//
//  ContentView.swift
//  SwiftUI CRUD
//
//  Created by Roy Attila on 18/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var loginTF = ""
    @State private var passwordTF = ""
    var employeeList = EmployeeList()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Demo App")
                    .fontWeight(.bold)
                    .font(.title)
                    .offset(y: 40)
                    .padding(.bottom, 30)
                Spacer()
                    NavigationLink(destination: DashboardView()) {
                        OrangeButtonTextView(buttonText: "Sign In")
                    }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
