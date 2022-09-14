//
//  ContentView.swift
//  CW5
//
//  Created by aalaa alsharhan on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var emojis = ["🤣","😎","🥳","😡","🥺","🥴","🥶","😱","😴","😍","🤓","😷","👻","😝","🧐"] //control , command, space
    @State var sta = ""
    var body: some View {
        
     
            
            VStack{
                
               Text("اختار الايموجي اللي يعبر عنك اليوم")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                
              
                Text(sta)
                    .font(.system(size: 60))
                    //.resizable()
                    //.scaledToFit()
                    .frame(width: 100, height: 100)
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(emojis, id: \.self){
                            emoji in
                            Text(emoji)
            
                                .font(.system(size: 30))
                                .onTapGesture {
                                   
                                 sta = emoji
                                        
                                   
                               }
                                
                        }//end of foreach
                    }//end of hstack
                }//end of scroll
                
                
                
                
              
                
            }//end of vstack
            
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
