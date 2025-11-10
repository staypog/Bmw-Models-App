//
//  ContentView.swift
//  Bmw Models feat.George 10 oct
//
//  Created by George Starantsov on 10.10.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationStack {
                List(SampleCars){ car2 in
                    NavigationLink(destination: GenarationListView(car1:car2)) {
                        Text(car2.name)
                    }
                }.navigationTitle("BMW Models")
            }
        }
}

struct GenarationListView: View {
    let car1 : CarModel
    
    var body: some View {
        NavigationStack {
            List(car1.generation) { gen in
                NavigationLink(destination: KuzovListView(bodyT:gen)){
                    
                    VStack(alignment: .center) {
                        Image(gen.imageName)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                            .frame(width: 300,height: 200)
                            .padding(.horizontal)
                        Text(gen.name)
                            .font(.headline)
                        
                        Text(gen.year)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }.frame(maxWidth: .infinity, alignment: .center)

                }
            }.scrollContentBackground(.hidden).shadow(radius: 10).navigationTitle("\(car1.name) - Generations")
        }
    }
}

struct KuzovListView: View {
    let bodyT : Generation
    
    var body: some View {
        NavigationStack {
            List(bodyT.kuzov) { bodyType in
                NavigationLink(destination: EngineTypes(engineOfModel: bodyType)) {
                    VStack {
                        Image(bodyType.imageName)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                            .frame(width: 400,height: 200)
                            .shadow(radius: 15)
                            .padding(.horizontal)
                        Text(bodyType.bodyType)
                            .font(.headline)
                    }
                }
            }.scrollContentBackground(.hidden).shadow(radius: 20).navigationTitle("\(bodyT.name) - Body Type")
        }
    }
}


struct EngineTypes : View {
    let engineOfModel : Kuzov
    
    var body : some View {
        NavigationStack {
            List(engineOfModel.engines) { engineInfo in
                VStack {
//                    Image(engineInfo.imageName)
//                        .resizable()
//                        .scaledToFill()
//                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
////                        .frame(width: 400,height: 200)
//                        .padding(.horizontal)
                    
                    VStack {
                        Text(engineInfo.name)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding()
                        Text("Год: \(engineInfo.years)г.")
                            .offset(y : -17)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    VStack(alignment: .center, spacing: 5) {
                    HStack {
                        Text("Объем: \(engineInfo.volume)")
                        Spacer()
                        Text("Мощность: \(engineInfo.horsepower) л/c")

                    }
                    
                    HStack {
                        Text("Двигатель: \(engineInfo.code)")
                        Spacer()
                        Text("Топливо:")
                        Text(engineInfo.fuelType)
                    }

                    HStack {
                        ForEach(engineInfo.drive) { d in
                            HStack {
                                Text("Привод:")
                                Text(d.type)
                                }
                            }
                        }
                    }.padding(.horizontal,-12)
                }
            }.scrollContentBackground(.hidden).shadow(radius: 20).navigationTitle(engineOfModel.bodyType).listStyle(.grouped)
        }
    }
}


#Preview {
    GenarationListView(car1: CarModel(
        name: "3-series", generation: [

            Generation(
                name: "E30",
                year: "1982–1994",
                imageName: "e30",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan",
                        year: "1983–1991",
                        imageName: "e30_sedan",
                        engines: [
                            Engine(name: "316", volume: "1.8", code: "M10B16", fuelType: "Бензин", horsepower: 90, years: "01.1983 - 12.1988",imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                           
                        ]
                    )
                ]
            ),

            // ---------- E36 ----------
            Generation(
                name: "E36",
                year: "1990–2000",
                imageName: "e36",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan",
                        year: "1990–1998",
                        imageName: "e36_sedan",
                        engines: [
                            Engine(name: "316i", volume: "1.6", code: "M40B16", fuelType: "Бензин", horsepower: 99, years: "10.1990 - 08.1993", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                           
                        ]
                    ),
                    Kuzov(
                        bodyType: "Coupe",
                        year: "1992–1999",
                        imageName: "e36_coupe",
                        engines: [
                            Engine(name: "316i", volume: "1.6", code: "M43B16", fuelType: "Бензин", horsepower: 102, years: "09.1993 - 04.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            
                        ]
                    ),
                    Kuzov(
                        bodyType: "Compact",
                        year: "1994–2000",
                        imageName: "e36_compact",
                        engines: [
                            Engine(name: "316i", volume: "1.6", code: "M43B16", fuelType: "Бензин", horsepower: 102, years: "09.1993 - 04.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                           
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring",
                        year: "1995–1999",
                        imageName: "e36_touring",
                        engines: [
                            Engine(name: "316i", volume: "1.6", code: "M43B16", fuelType: "Бензин", horsepower: 102, years: "09.1993 - 04.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                           
                        ]
                    )
                ]
            )
            ]
        )
    )

}






//#Preview {
//    EngineTypes(engineOfModel:
//        Kuzov(
//            bodyType: "Sedan",
//            year: "2020–2023",
//            imageName: "g20_sedan", // имя картинки из Assets
//            engines: [
//                Engine(name: "320i", volume: "2.0", code: "M52B20", fuelType: "Бензин", horsepower: 150, years: "09.1994 - 02.1999", imageName: "m52b20engine", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
//                Engine(name: "328i", volume: "2.8", code: "M52B28", fuelType: "Бензин", horsepower: 193, years: "02.1995 - 02.1999",imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
//                Engine(name: "328i", volume: "2.8", code: "M52B28", fuelType: "Бензин", horsepower: 193, years: "02.1995 - 02.1999",imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
//                Engine(name: "328i", volume: "2.8", code: "M52B28", fuelType: "Бензин", horsepower: 193, years: "02.1995 - 02.1999",imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
//            ]
//        )
//    )
//}

//struct EngineTypes : View {
//    let engineOfModel : Kuzov
//    
//    var body : some View {
//            ScrollView {
//                 VStack(alignment: .leading, spacing: 20) {
//                     ForEach(engineOfModel.engines) { engineInfo in
//                         VStack(alignment: .leading, spacing: 12) {
//                             // MARK: - Engine Image
//                             Image(engineInfo.imageName)
//                                 .resizable()
//                                 .scaledToFit()
//                                 .frame(maxWidth: .infinity)
//                                 .frame(height: 200)
//                                 .clipShape(RoundedRectangle(cornerRadius: 16))
//                                 .shadow(radius: 10)
//                                 .overlay(
//                                     RoundedRectangle(cornerRadius: 16)
//                                         .stroke(Color.gray.opacity(0.2), lineWidth: 1)
//                                 )
//                                 .background(
//                                     Color.gray.opacity(0.05)
//                                         .clipShape(RoundedRectangle(cornerRadius: 16))
//                                 )
//
//                             
//                             // MARK: - Engine Info
//                             VStack(alignment: .leading, spacing: 6) {
//                                 Text(engineInfo.name)
//                                     .font(.title3.bold())
//                                     .foregroundColor(.primary)
//                                 
//                                 HStack {
//                                     Label(engineInfo.fuelType, systemImage: "fuelpump.fill")
//                                         .font(.subheadline)
//                                         .foregroundColor(engineInfo.fuelType.contains("Дизель") ? .blue : .orange)
//                                     Spacer()
//                                     Label("\(engineInfo.horsepower) л.с.", systemImage: "speedometer")
//                                         .font(.subheadline)
//                                         .foregroundColor(.secondary)
//                                 }
//                                 
//                                 HStack {
//                                     Text("Объем: \(engineInfo.volume)L")
//                                     Spacer()
//                                     Text("Код: \(engineInfo.code)")
//                                 }
//                                 .font(.subheadline)
//                                 .foregroundColor(.secondary)
//                                 
//                                 Divider().padding(.vertical, 4)
//                                 
//                                 // MARK: - Drive Types
//                                 if !engineInfo.drive.isEmpty {
//                                     VStack(alignment: .leading, spacing: 4) {
//                                         Text("Привод:")
//                                             .font(.subheadline.bold())
//                                         ForEach(engineInfo.drive) { d in
//                                             HStack {
//                                                 Image(systemName: d.type == "AWD" ? "circle.grid.cross.fill" : "arrowshape.turn.up.left.circle.fill")
//                                                     .foregroundColor(.accentColor)
//                                                 Text("\(d.description)")
//                                                     .font(.subheadline)
//                                             }
//                                         }
//                                     }
//                                 }
//                             }
//                             .padding(.horizontal)
//                             .padding(.bottom)
//                         }
//                         .background(
//                             RoundedRectangle(cornerRadius: 20)
//                                 .fill(Color(.systemBackground))
//                                 .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
//                         )
//                         .padding(.horizontal)
//                     }
//                 }
//                 .padding(.top)
//             }
//             .navigationTitle(engineOfModel.bodyType)
//             .background(Color(.systemGroupedBackground))
//         }
//     }
