//
//  ContentView.swift
//  counterApp
//
//  Created by Yahan Yang on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    var body: some View {
        NavigationStack{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Text("\(count) People")
                            .font(.system(size:31))
                            .padding(30)
                        Spacer()
                        NavigationLink {
                            SettingsView()
                        } label:{
                            Image(systemName: "gear")
                        }
                        .font(.system(size:50))
                        .padding(30)
                    }
                    Spacer()
                    HStack{
                        Button{
                            count -= 1
                        } label:{
                            Image(systemName:"minus")
                        }
                        .padding(30)
                        .font(.system(size:50))
                        Spacer()
                        Button{
                            count += 1
                        } label:{
                            Image(systemName:"plus")
                        }
                        .padding(30)
                        .font(.system(size:50))
                    }
                }
                .foregroundStyle(.white)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
