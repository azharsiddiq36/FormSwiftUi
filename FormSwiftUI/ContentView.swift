//
//  ContentView.swift
//  FormSwiftUI
//
//  Created by One Click Democracy  on 29/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                Section(){
                    NavigationLink(destination:About()){
                        HStack{
                            Image("profile")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment:.leading){
                                Text("Azhar Siddiq").font(.headline)
                                Text("081275753271").font(.caption)
                            }
                        }
                    }
                }
                //Section Pengaturan Umum
                Section(header:Text("Pengaturan Umum")){
                    NavigationLink(destination:About()){
                        HStack(spacing:20){
                            Image(systemName: "star.fill")
                                .frame(width:35,height: 35)
                                .background(Color.orange)
                                .cornerRadius(5)
                                .foregroundColor(Color.white)
                            VStack(alignment:.leading){
                                Text("Pesan berbintang").font(.caption)
                            }
                        }
                    }
                    NavigationLink(destination:About()){
                        HStack(spacing:20){
                            Image(systemName: "tv")
                                .frame(width:35,height: 35)
                                .background(Color.green)
                                .cornerRadius(5)
                                .foregroundColor(Color.white)
                            VStack(alignment:.leading){
                                Text("Whatsapp Web/Dekstop").font(.caption)
                            }
                        }
                    }
                }
                Section(header:Text("Pengaturan Akun")){
                    NavigationLink(destination:About()){
                        HStack(spacing:20){
                            Image(systemName: "person")
                                .frame(width:35,height: 35)
                                .background(Color.blue)
                                .cornerRadius(5)
                                .foregroundColor(Color.white)
                            VStack(alignment:.leading){
                                Text("Akun").font(.caption)
                            }
                        }
                    }
                    NavigationLink(destination:About()){
                        HStack(spacing:20){
                            Image(systemName: "phone.circle")
                                .frame(width:35,height: 35)
                                .background(Color.green)
                                .cornerRadius(5)
                                .foregroundColor(Color.white)
                            VStack(alignment:.leading){
                                Text("Chat").font(.caption)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("Setting")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}

struct About:View{
    var body: some View{
        Text("ini about")
    }
}
