//
//  OrderTrackingView.swift
//  UIDesign
//
//  Created by Shaden Almuhaidib on 01/09/2022.
//

import SwiftUI
import MapKit

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
struct OrderTrackingView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:24.7, longitude: 46.6), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let location = [
        Location(name: "Kingdom tower", coordinate: CLLocationCoordinate2D(latitude:24.7, longitude: 46.6)), Location(name: "King Fahad Road", coordinate: CLLocationCoordinate2D(latitude: 29.7, longitude: 41.7))]

    var body: some View {
//        NavigationView{
            ZStack(){
              
            Map(coordinateRegion: $mapRegion, annotationItems: location) { location in MapMarker(coordinate: location.coordinate)}
                
                
                VStack{
                    HStack{
                    Button{
                        print("Back")
                    }label:{
                        Image(systemName:"arrow.left")
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                    }.accentColor(.black)
                        Spacer()

                        Text("Order tracking")
                            .font(.title2)
                            .bold()
                        Spacer()
                        Button{
                            print("Back")
                        }label:{
                            Text("***")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black)
                                .cornerRadius(15)
                        }.accentColor(.black)
                    }                .padding(37.0)

                    Spacer()
                    ZStack{
                        Rectangle()
                            .frame(width: 395, height: 90)
                            .cornerRadius(25)
                            .foregroundColor(.white)
                        HStack{
                            Rectangle()
                                .frame(width: 55, height: 55)
                                .cornerRadius(15)
                                .foregroundColor(.gray)
                            VStack{
                                Text("Steve Torn")
                                    .font(.title2)
                                    .bold()
                                Text("Your manager")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            
                            Button{
                                print("Back")
                            }label:{
                            Image(systemName:"ellipsis.bubble.fill")
                                .padding()
                                .background(Color(red: 0.995, green: 0.956, blue: 0.909))
                                .cornerRadius(15)
                        }.accentColor(.black)
                            
                            Button{
                                print("Back")
                            }label:{
                            Image(systemName:"phone.fill")
                                .padding()
                                .background(Color(red: 0.959, green: 0.716, blue: 0.334))
                                .cornerRadius(15)
                        }.accentColor(.black)
                            
                        }.padding(.horizontal,30)
                    }
                    ZStack{
            Rectangle()
                .foregroundColor(Color.white)
                .frame(width: 425, height: 250)
                    
                    VStack{
                        HStack(alignment: .bottom){
                        Text("Remaining time")
                                .font(.title2)
                            Spacer()
                            Text("1")
                                .bold()
                                .font(.system(size: 80))
                            Text("h")
                                .font(.title2)

                            Text("05")
                                .bold()
                                .font(.system(size: 80))
                            Text("min")
                                .font(.title2)

                        }.padding()
                        
                        Divider()
                        
                        HStack{
                            Image(systemName: "stopwatch.fill")
                            Text("11:00 AM")
                            
                            Spacer()
                            Button{
                                print("Back")
                            }label:{
                            Text("Pay now")
                                .bold()
                                .font(.title2)
                                .padding()
                                .padding(.horizontal)
                                .background(Color(red: 0.959, green: 0.716, blue: 0.334))
                                .cornerRadius(15)
                        }.accentColor(.white)
                        }.padding()
                        
                    }
                    
                    }
                }
                
        }.ignoresSafeArea()
        
        
//        }.navigationTitle("")
//            .toolbar {
//                   ToolbarItem(placement: .navigationBarLeading){
//                   Button{
//                       print("Back")
//                   }label:{
//                       Image(systemName:"arrow.left")
//                           .padding()
//                           .background(Color.white)
//                           .cornerRadius(15)
//                   }.accentColor(.black)
//                   }
//                       ToolbarItem(placement: .navigationBarTrailing){
//                           Button{
//                               print("3")
//                           }label:{
//                               Rectangle()
//                                   .foregroundColor(Color.gray)
//                                   .frame(width: 53, height: 53)
//                                   .cornerRadius(15)
//                           }
                       
//               }
//
//       }

        
        
    }
}

struct OrderTrackingView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTrackingView()
    }
}
