//
//  ContentView.swift
//  Sign
//
//  Created by Jumanah  on 05/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var task: String = ""
    @State var details: String = ""
//    let mylist = ["List Text Color","Navigation Title Color", "Implement Light Mode"]
  
    var body: some View {

        NavigationStack {

            VStack(alignment: .center,spacing: 25){
                
                //HStack{
                //                                Button(action: {
                //                                }, label: {
                //                                    Image(systemName: "chevron.left")
                //                                })
                //                                Spacer()
                //                                VStack(spacing: 4){
                //                                    Text("Ask for help")
                //                                        .font(.title)
                //                                        .background(Color(red: 0.401, green: 0.561, blue: 0.787))
                //                                }
                // }
                
                TextField("Task name", text: $task)
                    .padding() .frame( width:340, height: 50, alignment: .top)
                    .background(Color(red: 0.945, green: 0.945, blue: 0.949)).cornerRadius(15)
                
                TextField("Task details", text: $details)
                    .padding() .frame( width:340, height: 350,  alignment: .top)
                    .background(Color(red: 0.945, green: 0.945, blue: 0.949)).cornerRadius(15)
                
                Button(action:{
                    
                }, label: {
                    
                        Text("Request")
                    //.padding()
                        .foregroundColor(Color(hue: 1.0, saturation: 0.002, brightness: 0.001))
                        .frame( width: 260, height: 50)
                        .background(Color(red: 0.781, green: 0.841, blue: 0.921))
                        .font(.headline)
                        .cornerRadius(12)
                    
                }).padding(.top,80)
                
                Spacer()
                
            } .padding(.horizontal)
                .padding(.top,80)
            
                
                .navigationTitle(Text("Ask for help"))
            //.navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(
                    Color.accentColor
                    , for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .navigationBarTitleDisplayMode(.inline)
            
            
            }
        
        }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
