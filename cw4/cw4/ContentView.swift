//
//  ContentView.swift
//  cw4
//
//  Created by JARRAH MAYYAL on 12/09/2022.
//

import SwiftUI
struct ContentView: View {
    @State var newword = ""
    @State var text: String = ""
    
    var foods = [ "burger" , "pizza" , "fries" , "sandwich" , "potato&cheese"]
    var body: some View {
        
        VStack{
            
            List(foods, id: \.self) { foods in
                HStack{
                    Image(foods)
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text(foods)
                    
                }
                
                
                
            }
            
            
            
            HStack{
                
                Button(action: {
                    print("Button action")
                    
                }) {
                    Image(systemName: "plus")
                    
                }
                
                
                
                
                Image(systemName: "plus")
                    .font(.largeTitle)
                    .frame(width: 70, height: 70)
                    .background(.blue)
                    .clipShape(Circle())
                
                TextField("add item", text: $text)
                    .frame(width: 100, height: 50)
                
                
                Image(systemName: "minus")
                    .font(.largeTitle)
                    .frame(width: 70, height: 70)
                    .background(.red)
                    .clipShape(Circle())
                
                Image(systemName: "questionmark")
                    .font(.largeTitle)
                    .frame(width: 70, height: 70)
                    .background(.orange)
                    .clipShape(Circle())
                
                
            }
            
        }
        
        
        
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
