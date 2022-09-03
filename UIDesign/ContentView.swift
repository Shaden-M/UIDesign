//
//  ContentView.swift
//  UIDesign
//
//  Created by Shaden Almuhaidib on 26/08/2022.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITableView.appearance().backgroundColor = .lightGray
        
    }
    var body: some View {
    
        ScrollView{
        ZStack{
            
            Color.gray
                .opacity(0.1)
                .ignoresSafeArea()
            
        VStack{
            VStack{
                Button{
                    print("Button tapped!")
                }label:{
            HStack{
                VStack(alignment: .leading){
                Text("David Smith")
                    .bold()
                    .font(.title2)
                    Text("Personal discount available")
                        .foregroundColor(Color.gray)
                }
                Spacer()
                
                Rectangle()
                    .frame(width: 60, height: 60)
                    .background(Color.blue)
                    .cornerRadius(15)
            }
                }.accentColor(.black)
            .padding(15)
            .padding(.horizontal, 5)
                .background(.white)
                .cornerRadius(25)
                .padding()
            }
            
            HStack{
                Button{
                    print("SUV")
                }label:{
                    Text("SUV")
                    .font(Font.caption)
                        .foregroundColor(.gray)
                        .opacity(0.8)
                        .background(Color.clear)
                        .padding(.horizontal, 20.0)
                        .padding(.vertical, 10)
                        .overlay(
                              RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(red: 0.729, green: 0.729, blue: 0.742, opacity: 0.61))
                          )
                }
                Button{
                    print("Sedan")
                }label:{
                    Text("Sedan")
                    .font(Font.caption)
                        .foregroundColor(.gray)
                        .opacity(0.8)
                        .background(Color.clear)
                        .padding(.horizontal, 20.0)
                        .padding(.vertical, 10)                        .overlay(
                              RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(red: 0.729, green: 0.729, blue: 0.742, opacity: 0.61))
                          )
                }
                
                
                Button{
                    print("Convertible")
                }label:{
                Text("Convertible")
                    .font(Font.caption)
                    .foregroundColor(.gray)
                    .opacity(0.8)
                    .background(Color.clear)
                    .padding(.horizontal, 20.0)
                    .padding(.vertical, 10)                        .overlay(
                          RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.729, green: 0.729, blue: 0.742, opacity: 0.61))
                      )
                }
                
                Spacer()
                
                Button{
                    print("A")
                }label:{
                Image("321")
                    .resizable()
                    .frame(width: 38, height: 38)
                    .cornerRadius(13)
                    .padding()

                }

                    
            }.padding(.horizontal)
                .offset(x: 0, y: -22)
            
//            1
            
            Button{
                print("S")
            }label:{
            ZStack{
                Rectangle()
                    .frame(width: 400, height: 300, alignment: .center)
                    .cornerRadius(30)
                    .foregroundColor(Color(red: 0.116, green: 0.126, blue: 0.134))
                VStack{
                    HStack{
                        Image(systemName: "star")
                        Text("5.0")
                            .foregroundColor(Color.white)
                        Spacer()
                        
                    Image(systemName: "heart")
                    }.padding(.horizontal, 40)
                        .offset(x: 0, y: 45)
                    
                    Image("2")
                        .resizable()
                        .frame(width: 320, height: 120, alignment: .center)
                        .offset(x: 0, y: 40)

                    Spacer()
                    HStack{
                        VStack(alignment: .leading){
                            HStack{
                            Text("Rolls-Royce Cullinan")
                                .foregroundColor(.white)
                                .font(Font.title2)
                                .bold()
                            Spacer()
                            Text("New")
                                    .foregroundColor(.black)
                                    .font(Font.custom("New", size: 11))
                                    .bold()
                                    .padding()
                                    .frame(width: 55, height: 29)
                                    .background(Color.yellow)
                                    .cornerRadius(5)
                                    
                            }.padding()
                            Divider()
                            HStack{
                                Image(systemName: "star")
                                Text("635hp")
                                    .foregroundColor(.white)
                                Text("  ")
                                Image(systemName: "star")
                                Text("3.7 sec")
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                                Text("$1500")
                                    .foregroundColor(.white)

                                Text("/Day")
                                    .foregroundColor(Color.gray)
                                
                            }
                        }.padding()
                    }.padding()
                        .offset(x: 0, y: -10)
                }

            }.offset(x: 0, y: -30)
        }.accentColor(.black)

            
            
//            2
            
            Button{
                print("S")
            }label:{
            ZStack{
                Rectangle()
                    .frame(width: 400, height: 300, alignment: .center)
                    .cornerRadius(30)
                    .foregroundColor(Color(red: 0.838, green: 0.888, blue: 0.934))
                VStack{
                    
                    HStack{
                        Image(systemName: "star")
                        Text("5.0")
                            .foregroundColor(Color.black)
                        Spacer()
                        
                    Image(systemName: "heart")
                    }.padding(.horizontal, 40)
                        .offset(x: 0, y: 25)
    
                    Image("3")
                        .resizable()
                        .frame(width: 350, height: 120, alignment: .center)
                        .offset(x: 0, y: 30)
          
                    Spacer()
                    HStack{
                        VStack(alignment: .leading){
                            Text("Bentley Continental GT")
                                .font(Font.title2)
                                .bold()
                            Divider()
                            HStack{
                                Image(systemName: "star")
                                Text("635hp")
                                Text("  ")
                                Image(systemName: "star")
                                Text("3.7 sec")
                                
                                Spacer()
                                
                                Text("$1500")
                                Text("/Day")
                                    .foregroundColor(Color.gray)
                                
                            }
                        }.padding()
                    }.padding()
                }.padding()

            }.offset(x: 0, y: -45)
            }.accentColor(.black)
  
            
//            3
            Button{
                print("S")
            }label:{
            ZStack{
                Rectangle()
                    .frame(width: 400, height: 300, alignment: .center)
                    .cornerRadius(30)
                    .foregroundColor(Color(red: 0.838, green: 0.888, blue: 0.934))
                VStack{
                    
                    HStack{
                        Image(systemName: "star")
                        Text("5.0")
                            .foregroundColor(Color.black)
                        Spacer()
                        
                    
                    Image(systemName: "heart")
                    }.padding(.horizontal, 40)
                    
                        .offset(x: 0, y: 25)
                    
                    Image("3")
                        .resizable()
                        .frame(width: 350, height: 120, alignment: .center)
                        .offset(x: 0, y: 30)
          
                    Spacer()
                    HStack{
                        VStack(alignment: .leading){
                            Text("Bentley Continental GT")
                                .font(Font.title2)
                                .bold()
                            Divider()
                            HStack{
                                Image(systemName: "star")
                                Text("635hp")
                                Text("  ")
                                Image(systemName: "star")
                                Text("3.7 sec")
                                
                                Spacer()
                                
                                Text("$1500")
                                Text("/Day")
                                    .foregroundColor(Color.gray)
                                
                            }
                        }.padding()
                    }.padding()
                }.padding()

            }.offset(x: 0, y: -60)
            }.accentColor(.black)
            
            
        }
        
        }

        }
        
        .ignoresSafeArea()
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
