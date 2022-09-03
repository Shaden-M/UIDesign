//
//  YourCardsView.swift
//  UIDesign
//
//  Created by Shaden Almuhaidib on 31/08/2022.
//

import SwiftUI

struct YourCardsView: View {

    var body: some View {
        NavigationView{
            ZStack{
                Color.gray
                    .opacity(0.1)
                    .ignoresSafeArea()
                
        VStack{
            HStack(spacing: 2){
                Text("Your cards")
                    .bold()
                    .font(Font.largeTitle)
                Spacer()
            
                Image(systemName:"plus")
                    .padding(12)
                    .background(Color.black
                        .opacity(0.7))
                    .cornerRadius(15)
                
            }.padding(.horizontal, 30)
         
            ScrollView(.horizontal){
            HStack{
                Button{
                    print("Bank card")
                }label:{
                    Text("Bank card")
                    .font(Font.caption)
                        .foregroundColor(.black)
                        .bold()
                        .opacity(0.8)
                        .padding(.horizontal, 20.0)
                        .padding(.vertical, 10)
                        .overlay(
                              RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(red: 0.729, green: 0.729, blue: 0.742, opacity: 0.61))
                          )
                        .background(Color(red: 0.998, green: 0.755, blue: 0.382))
                        .cornerRadius(10)

                }
                Button{
                    print("Apple Pay")
                }label:{
                    Text("Apple Pay")
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
                    print("Google Pay")
                }label:{
                Text("Google Pay")
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
                    print("Samsung Pay")
                }label:{
                Text("Samsung Pay")
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
            }
            }.padding([.leading, .bottom], 40)

            ZStack(alignment: .top){
            Rectangle()
                .frame(width: 450, height: 600, alignment: .center)
                .cornerRadius(40)
                .foregroundColor(.white)
                VStack{
                Text("Add new card")
                    .bold()
                    .font(.title2)
                    .padding()
                
                    ZStack(alignment: .topLeading){
                Rectangle()
                    .frame(width: 390, height: 230, alignment: .center)
                    .foregroundColor(Color(red: 0.998, green: 0.755, blue: 0.382))
                    .cornerRadius(30)
                        VStack(alignment: .leading){
                    Text("VISA")
                        .bold()
                        .foregroundColor(.white)
                        .font(Font.title)
                        .padding()
                            
                    Text(". . . .   . . . .   . . . .  0380")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .padding()
                          
                            HStack{
                                VStack(alignment: .leading){
                                    Text("VALID THRU")
                                        .foregroundColor(.white)
                                        .opacity(0.8)
                                    Text("08/26")
                                        .foregroundColor(.white)
                                }
                                Text("    ")
                                
                                VStack(alignment: .leading){
                                    Text("CVV")
                                        .foregroundColor(.white)
                                        .opacity(0.8)
                                    
                                    Text(". . .")
                                        .foregroundColor(.white)
                                }
                                
                            }.padding()
                            

                        }
                }
                    

                    ZStack{
                        Rectangle()
                            .frame(width: 390, height:70)
                            .foregroundColor(Color(red: 0.976, green: 0.976, blue: 0.976))
                            .cornerRadius(20)
                    HStack{

                        Text("VISA")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .bold()
                            .padding()
                            .background(Color(red: 0.159, green: 0.241, blue: 0.367))
                            .cornerRadius(15)
                        Text("4500 2890 7700 0308")
                            .font(Font.title3)
                        
                        Spacer()
                        Image(systemName: "x.circle.fill")
                                
                    }.padding(.horizontal, 30.0)
                     
                        
                    }.padding()
              
                    HStack{
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 190, height:70)
                            .foregroundColor(Color(red: 0.976, green: 0.976, blue: 0.976))
                            .cornerRadius(20)
                        HStack{
                            Text("08 / 26")
                                .font(Font.title3)
                            
                            Spacer()
                            Image(systemName: "x.circle.fill")
                        }.padding(.horizontal, 30.0)
                      
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 190, height:70)
                            .foregroundColor(Color(red: 0.976, green: 0.976, blue: 0.976))
                            .cornerRadius(20)
                        
                        HStack{
                            Text("***")
                                .font(Font.title3)
                            
                            Spacer()
                            Image(systemName: "x.circle.fill")
                        }.padding(.horizontal, 30.0)
                        
                    }
                    }.padding(.horizontal, 30.0)
                  
                    Divider()
                    
                    Button{
                        print("A")
                        
                    }label:{
                        Text("Save card")
                            .foregroundColor(.white)
                            .font(Font.title2)
                            .bold()
                            .padding()
                            .frame(width: 390, height: 70)
                            .background(Color.black)
                            .cornerRadius(20)
                    }.padding()
                    
                    
            }
            }
        }
        }
        .navigationTitle("")
     .toolbar {
            ToolbarItem(placement: .navigationBarLeading){
            Button{
                print("Back")
            }label:{
                Image(systemName:"arrow.left")
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
            }.accentColor(.black)
            }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        print("3")
                    }label:{
                        Rectangle()
                            .foregroundColor(Color.gray)
                            .frame(width: 53, height: 53)
                            .cornerRadius(15)
                    }
                
        }
      
}
        }
    }
}
struct YourCardsView_Previews: PreviewProvider {
    static var previews: some View {
        YourCardsView()
    }
}
