
import SwiftUI

struct profile: View {
    @State private var action: Int? = 0
    
    var body: some View {
        NavigationView {

            VStack{
        
                        Image("Image")
                            .resizable()
                            .frame(width: 110, height: 110)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.gray, lineWidth: 1.5))
                            .shadow(radius: 8)
                        
                        
                        Text("Sara A.")
                            .fontWeight(.medium)
                            .padding(0.5)
                        Text(" ⭐️ 4.8 (34 reviews)")
                            .padding(0.5)
                        Text("🇸🇦 Arabic, Saudi Arabia")
                        .padding(0.5)
                    
                    HStack{
                        
                        Text("90% Jobs Completed")
                            .padding(25)
                        // .padding(.horizontal,50)
                        
                        Text("90% On time")
                            .padding(.horizontal,30)
                            .padding(0.5)
                    }
               
                    Text("Sign language expert")
                    .fontWeight(.bold)                .padding(.leading, -170)
                Text("Hello! I'm Sara...").fontWeight(.regular).padding(.leading, -170)
                    Divider()
                    //                    .frame(height: 0.5)
                    
                    //                    .overlay(Color(red: 0.592, green: 0.592, blue: 0.592))
//                    Text("Ratings & Reviews")
                    Button(action:{
                        self.action = 1

                        
                    }, label: {
                        NavigationLink(destination: ContentView()) {
                            Text("Ask for help")}                .navigationTitle(Text("profile"))
                            .toolbarBackground(
                                Color.accentColor
                                , for: .navigationBar)
                            .toolbarBackground(.visible, for: .navigationBar)
                            .navigationBarTitleDisplayMode(.inline)

                       
                            .foregroundColor(Color(hue: 1.0, saturation: 0.002, brightness: 0.001))
                            .frame( width: 260, height: 50)
                            .background(Color(red: 0.781, green: 0.841, blue: 0.921))
                            .font(.headline)
                            .cornerRadius(12)
                        
                    }
                    )
                    
                }
                .padding(.vertical,-320)
               // .navigationTitle(Text("profile"))
                //.navigationBarTitleDisplayMode(.inline)
//                .toolbarBackground(
//                    Color.accentColor
//                    , for: .navigationBar)
//                .toolbarBackground(.visible, for: .navigationBar)
//                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
    struct profile_Previews: PreviewProvider {
        static var previews: some View {
            profile()
        }
    }

