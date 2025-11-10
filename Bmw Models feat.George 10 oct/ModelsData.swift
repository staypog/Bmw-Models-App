//
//  Models.swift
//  Bmw Models feat.George 10 oct
//
//  Created by George Starantsov on 10.10.2025.
//


import Foundation

struct CarModel: Identifiable {
    let id = UUID()
    let name: String
    let generation : [Generation]
}

struct Generation : Identifiable {
    let id = UUID()
    let name : String
    let year : String
}


let SampleCars : [CarModel] = [
    CarModel(
        name: "3-series",
        generation: [
            Generation(name: "E30", year: "1982-1994"),
            Generation(name: "E36", year: "1990–2000"),
            Generation(name: "E90", year: "2005–2012"),
            Generation(name: "G20", year: "2018–н.в.")
        ]
    ),
    CarModel(
        name: "5-series",
        generation: [
            Generation(name: "E34", year: "1988–1996"),
            Generation(name: "E39", year: "1995–2003"),
            Generation(name: "G30", year: "2017–н.в.")
        ]
    )
]
