//
//  ContentView.swift
//  cw4
//
//  Created by JARRAH MAYYAL on 12/09/2022.
//

import SwiftUI
struct ContentView: View {
    @State var Foods = [ "burger" , "pizza" , "fries" , "sandwich" , "potato&cheese"]
    @State var addnew = ""
    var body: some View {
        
        VStack {
            List(Foods, id: \.self){ food in
                HStack{
                    Image(food)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 60)
                    Text(food)
                }
                
                
            }
            
            HStack{
                Button {
                    Foods.append(addnew)
                } label: {
                    Image(systemName: "plus")
                        .font(.title)
                        .foregroundColor(.white)
                }
                .frame(width: 70, height: 70)
                .background(Color.cyan)
                .cornerRadius(25)
                
                TextField("add new item", text: $addnew)
                
                Button {
                    Foods.remove(at: 0
                    )
                } label: {
                    Image(systemName: "minus")
                        .font(.title)
                        .foregroundColor(.white)
                }
                .frame(width: 70, height: 70)
                .background(Color.red)
                .cornerRadius(25)
                
                Button {
                    Foods.append(Foods.randomElement() ?? "")
                } label: {
                    Image(systemName: "questionmark")
                        .font(.title)
                        .foregroundColor(.white)
                }
                .frame(width: 70, height: 70)
                .background(Color.orange)
                .cornerRadius(25)
                
            } .padding()
            
        }
        
        
        
        
        
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
