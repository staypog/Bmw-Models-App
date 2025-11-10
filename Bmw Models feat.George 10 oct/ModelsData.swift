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
    let imageName : String
    let kuzov : [Kuzov]
}


struct Kuzov : Identifiable {
    let id = UUID()
    let bodyType : String
    let year : String
    let imageName : String
    let engines : [Engine]

}

struct Engine : Identifiable {
    let id = UUID()
    let name : String
    let volume : String
    let code : String
    let fuelType : String
    let horsepower : Int
    let years : String
    let imageName : String
    let drive : [Drive]
}

struct Drive : Identifiable {
    let id = UUID()
    let type : String
    let description : String
    let imageName : String
}


let SampleCars: [CarModel] = [
    // === BMW 3-SERIES ===
    CarModel(
        name: "3-series",
        generation: [

            // ---------- E21 ----------
            Generation(
                name: "E21",
                year: "1975–1983",
                imageName: "e21",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan(4-door)",
                        year: "1975–1982",
                        imageName: "e21_sedan",
                        engines: [
                            Engine(name: "315", volume: "1.6", code: "M10B16", fuelType: "Бензин", horsepower: 75, years: "03.1981 - 12.1982" , imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "BMWM")]),
                            Engine(name: "316", volume: "1.6", code: "M10B16", fuelType: "Бензин", horsepower: 90, years: "08.1975 - 08.1980", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "316", volume: "1.8", code: "M10B16", fuelType: "Бензин", horsepower: 90, years: "08.1980 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318", volume: "1.8", code: "M10B18", fuelType: "Бензин", horsepower: 98, years: "08.1975 - 08.1980", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318i", volume: "1.8", code: "M10B18", fuelType: "Бензин", horsepower: 105, years: "11.1979 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320/4cyl", volume: "2.0", code: "M10B18", fuelType: "Бензин", horsepower: 109, years: "08.1975 - 08.1977", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320/6", volume: "2.0", code: "M20B18", fuelType: "Бензин", horsepower: 122, years: "09.1977 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M10B20", fuelType: "Бензин", horsepower: 125, years: "08.1975 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "323i", volume: "2.3", code: "M20B23", fuelType: "Бензин", horsepower: 143, years: "01.1978 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Sedan(2-door)",
                        year: "1975–1982",
                        imageName: "e21_sedan",
                        engines: [
                            Engine(name: "315", volume: "1.6", code: "M10B16", fuelType: "Бензин", horsepower: 75, years: "03.1981 - 12.1982" , imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "BMWM")]),
                            Engine(name: "316", volume: "1.6", code: "M10B16", fuelType: "Бензин", horsepower: 90, years: "08.1975 - 08.1980", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "316", volume: "1.8", code: "M10B16", fuelType: "Бензин", horsepower: 90, years: "08.1980 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318", volume: "1.8", code: "M10B18", fuelType: "Бензин", horsepower: 98, years: "08.1975 - 08.1980", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318i", volume: "1.8", code: "M10B18", fuelType: "Бензин", horsepower: 105, years: "11.1979 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320/4cyl", volume: "2.0", code: "M10B18", fuelType: "Бензин", horsepower: 109, years: "08.1975 - 08.1977", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320/6", volume: "2.0", code: "M20B18", fuelType: "Бензин", horsepower: 122, years: "09.1977 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M10B20", fuelType: "Бензин", horsepower: 125, years: "08.1975 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "323i", volume: "2.3", code: "M20B23", fuelType: "Бензин", horsepower: 143, years: "01.1978 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Sedan(cabrio)",
                        year: "1975–1982",
                        imageName: "e21_sedan",
                        engines: [
                            Engine(name: "315", volume: "1.6", code: "M10B16", fuelType: "Бензин", horsepower: 75, years: "03.1981 - 12.1982" , imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "BMWM")]),
                            Engine(name: "316", volume: "1.6", code: "M10B16", fuelType: "Бензин", horsepower: 90, years: "08.1975 - 08.1980", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "316", volume: "1.8", code: "M10B16", fuelType: "Бензин", horsepower: 90, years: "08.1980 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318", volume: "1.8", code: "M10B18", fuelType: "Бензин", horsepower: 98, years: "08.1975 - 08.1980", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318i", volume: "1.8", code: "M10B18", fuelType: "Бензин", horsepower: 105, years: "11.1979 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320/4cyl", volume: "2.0", code: "M10B18", fuelType: "Бензин", horsepower: 109, years: "08.1975 - 08.1977", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320/6", volume: "2.0", code: "M20B18", fuelType: "Бензин", horsepower: 122, years: "09.1977 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M10B20", fuelType: "Бензин", horsepower: 125, years: "08.1975 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "323i", volume: "2.3", code: "M20B23", fuelType: "Бензин", horsepower: 143, years: "01.1978 - 08.1982", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    )
                ]
            ),

            // ---------- E30 ----------
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
                            Engine(name: "316i", volume: "1.6", code: "M10B18", fuelType: "Бензин", horsepower: 102, years: "01.1987 - 11.1988", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "316i", volume: "1.6", code: "M40B16", fuelType: "Бензин", horsepower: 99, years: "12.1988 - 04.1991", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318i", volume: "1.8", code: "M10B18", fuelType: "Бензин", horsepower: 102, years: "01.1984 - 12.1987", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318i", volume: "1.8", code: "M40B18", fuelType: "Бензин", horsepower: 113, years: "01.1983 - 12.1986", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318is", volume: "1.8", code: "M42B18", fuelType: "Бензин", horsepower: 136, years: "01.1989 - 04.1991", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M20B20", fuelType: "Бензин", horsepower: 125, years: "01.1983 - 09.1985", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M20B20", fuelType: "Бензин", horsepower: 129, years: "12.1986 - 04.1991", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "323i", volume: "2.3", code: "M20B23", fuelType: "Бензин", horsepower: 139, years: "01.1983 - 08.1983", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "323i", volume: "2.3", code: "M20B23", fuelType: "Бензин", horsepower: 150, years: "01.1983 - 08.1985", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "324d", volume: "2.4", code: "M21D24", fuelType: "Дизель", horsepower: 86, years: "01.1985 - 04.1991", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "324td", volume: "2.4", code: "M21D24", fuelType: "Дизель", horsepower: 115, years: "01.1987 - 04.1991", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325e", volume: "2.7", code: "M50B27", fuelType: "Бензин", horsepower: 122, years: "02.1985 - 11.1986", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325e", volume: "2.7", code: "M50B27", fuelType: "Бензин", horsepower: 129, years: "12.1986 - 08.1987", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325i", volume: "2.5", code: "M20B25", fuelType: "Бензин", horsepower: 170, years: "09.1985 - 04.1991", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325ix", volume: "2.5", code: "M20B25", fuelType: "Бензин", horsepower: 170, years: "09.1988 - 04.1991", imageName: "", drive: [Drive(type: "AWD", description: "Полный привод", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Coupe",
                        year: "1983–1991",
                        imageName: "e30_coupe",
                        engines: [
                            Engine(name: "316", volume: "1.6", code: "M10B16", fuelType: "Бензин", horsepower: 90, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "316", volume: "1.8", code: "M10B18", fuelType: "Бензин", horsepower: 102, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "316i", volume: "1.6", code: "M40B16", fuelType: "Бензин", horsepower: 99, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318i", volume: "1.8", code: "M40B18", fuelType: "Бензин", horsepower: 113, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318i", volume: "1.8", code: "M42B18", fuelType: "Бензин", horsepower: 136, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M20B20", fuelType: "Бензин", horsepower: 125, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "323i", volume: "2.3", code: "M20B23", fuelType: "Бензин", horsepower: 150, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "324d", volume: "2.4", code: "M21D24", fuelType: "Дизель", horsepower: 86, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "324td", volume: "2.4", code: "M21D24", fuelType: "Дизель", horsepower: 115, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325e", volume: "2.7", code: "M50B27", fuelType: "Бензин", horsepower: 129, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325i", volume: "2.5", code: "M20B25", fuelType: "Бензин", horsepower: 170,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                        ]
                    ),
                    Kuzov(
                        bodyType: "Cabriolet",
                        year: "1985–1993",
                        imageName: "e30_cabriolet",
                        engines: [
                            Engine(name: "318i", volume: "1.8", code: "M40B18", fuelType: "Бензин", horsepower: 113, years: "01.1987 - 04.1993", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M20B20", fuelType: "Бензин", horsepower: 129, years: "12.1986 - 12.1992", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325i", volume: "2.5", code: "M20B25", fuelType: "Бензин", horsepower: 170, years: "09.1985 - 12.1992", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring",
                        year: "1987–1994",
                        imageName: "e30_touring",
                        engines: [
                            Engine(name: "316i", volume: "1.6", code: "M40B16", fuelType: "Бензин", horsepower: 99, years: "12.1988 - 04.1994", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318i", volume: "1.8", code: "M40B18", fuelType: "Бензин", horsepower: 113, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318i", volume: "1.8", code: "M42B18", fuelType: "Бензин", horsepower: 136, years: "07.1987 - 04.1994", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M20B20", fuelType: "Бензин", horsepower: 129, years: "07.1987 - 12.1992", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "324td", volume: "2.4", code: "M21D24", fuelType: "Дизель", horsepower: 115, years: "05.1988 - 12.1991", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325ix", volume: "2.5", code: "M20B25", fuelType: "Бензин", horsepower: 170, years: "09.1988 - 12.1992", imageName: "", drive: [Drive(type: "AWD", description: "Полный привод", imageName: "")]),
                            Engine(name: "325i", volume: "2.5", code: "M20B25", fuelType: "Бензин", horsepower: 170, years: "07.1987 - 12.1992", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
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
                            Engine(name: "316i", volume: "1.6", code: "M43B16", fuelType: "Бензин", horsepower: 102,years: "09.1993 - 02.1998", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318tds", volume: "1.7", code: "M41D17", fuelType: "Дизель", horsepower: 90, years: "03.1995 - 02.1998", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318i", volume: "1.8", code: "M40B18", fuelType: "Бензин", horsepower: 113,years: "10.1990 - 08.1993", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318i", volume: "1.8", code: "M43B18", fuelType: "Бензин", horsepower: 115, years: "09.1993 - 02.1998", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M50B20(without vanos)", fuelType: "Бензин", horsepower: 150, years: "10.1990 - 04.1995", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M52B20(single vanos)", fuelType: "Бензин", horsepower: 150, years: "09.1994 - 02.1998", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325td", volume: "2.5", code: "M51D25", fuelType: "Дизель", horsepower: 115, years: "01.1991 - 02.1998", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325tds", volume: "2.5", code: "M51D25", fuelType: "Дизель", horsepower: 143, years: "06.1993 - 02.1998", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "323i", volume: "2.5", code: "M52B25", fuelType: "Бензин", horsepower: 170, years: "06.1995 - 02.1998", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325i", volume: "2.5", code: "M50B25", fuelType: "Бензин", horsepower: 192, years: "10.1990 - 01.1995", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "328i", volume: "2.8", code: "M52B28", fuelType: "Бензин", horsepower: 193, years: "02.1995 - 02.1998",imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                        ]
                    ),
                    Kuzov(
                        bodyType: "Coupe",
                        year: "1992–1999",
                        imageName: "e36_coupe",
                        engines: [
                            Engine(name: "316i", volume: "1.6", code: "M43B16", fuelType: "Бензин", horsepower: 102, years: "09.1993 - 04.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M50B20", fuelType: "Бензин", horsepower: 150, years: "10.1990 - 04.1995", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M52B20", fuelType: "Бензин", horsepower: 150, years: "09.1994 - 02.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "323i", volume: "2.5", code: "M52B25", fuelType: "Бензин", horsepower: 170, years: "06.1995 - 02.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325i", volume: "2.5", code: "M50B25", fuelType: "Бензин", horsepower: 192, years: "10.1990 - 01.1995", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "328i", volume: "2.8", code: "M52B28", fuelType: "Бензин", horsepower: 193, years: "02.1995 - 02.1999",imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                        ]
                    ),
                    Kuzov(
                        bodyType: "Compact",
                        year: "1994–2000",
                        imageName: "e36_compact",
                        engines: [
                            Engine(name: "316i", volume: "1.6", code: "M43B16", fuelType: "Бензин", horsepower: 102, years: "09.1993 - 04.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318tds", volume: "1.7", code: "M41D17", fuelType: "Дизель", horsepower: 90, years: "03.1995 - 02.2000", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "316i", volume: "1.9", code: "M43B19TU", fuelType: "Бензин", horsepower: 105, years: "05.1999 - 09.2000", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "323i", volume: "2.5", code: "M52B25", fuelType: "Бензин", horsepower: 170, years: "06.1995 - 02.2000", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring",
                        year: "1995–1999",
                        imageName: "e36_touring",
                        engines: [
                            Engine(name: "316i", volume: "1.6", code: "M43B16", fuelType: "Бензин", horsepower: 102, years: "09.1993 - 04.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318tds", volume: "1.7", code: "M41D17", fuelType: "Дизель", horsepower: 90, years: "03.1995 - 02.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "316i", volume: "1.6", code: "M43B16", fuelType: "Бензин", horsepower: 102, years: "09.1993 - 04.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M50B20", fuelType: "Бензин", horsepower: 150, years: "10.1990 - 04.1995", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M52B20", fuelType: "Бензин", horsepower: 150, years: "09.1994 - 02.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325tds", volume: "2.5", code: "M51D25", fuelType: "Дизель", horsepower: 115, years: "01.1995 - 05.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "323i", volume: "2.5", code: "M52B25", fuelType: "Бензин", horsepower: 170, years: "06.1995 - 02.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "328i", volume: "2.8", code: "M52B28", fuelType: "Бензин", horsepower: 193, years: "02.1995 - 02.1999",imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                        ]
                    ),
                    Kuzov(
                        bodyType: "Cabriolet",
                        year: "1993–1999",
                        imageName: "e36_cabriolet",
                        engines: [
                            Engine(name: "318i", volume: "1.8", code: "M43B18", fuelType: "Бензин", horsepower: 115, years: "09.1993 - 04.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M50B20", fuelType: "Бензин", horsepower: 150, years: "10.1990 - 04.1995", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "M52B20", fuelType: "Бензин", horsepower: 150, years: "09.1994 - 02.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325i", volume: "2.5", code: "M50B25", fuelType: "Бензин", horsepower: 192, years: "04.1993 - 01.1995", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "328i", volume: "2.8", code: "M52B28", fuelType: "Бензин", horsepower: 193, years: "02.1995 - 04.1999", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    )
                ]
            ),

            // ---------- E46 ----------
            Generation(
                name: "E46",
                year: "1998–2006",
                imageName: "e46",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan",
                        year: "1998–2001",
                        imageName: "e46_sedan",
                        engines: [
                            Engine(name: "316i", volume: "1.8", code: "M43B18", fuelType: "Бензин", horsepower: 116,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод",imageName: "")]),
                            Engine(name: "318i", volume: "2.0", code: "N42B20", fuelType: "Бензин", horsepower: 143,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.2", code: "M54B22", fuelType: "Бензин", horsepower: 170, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "325i", volume: "2.5", code: "M54B25", fuelType: "Бензин", horsepower: 192, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "330i", volume: "3.0", code: "M54B30", fuelType: "Бензин", horsepower: 231,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "320d", volume: "2.0", code: "M47D20", fuelType: "Дизель", horsepower: 150,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "330d", volume: "3.0", code: "M57D30", fuelType: "Дизель", horsepower: 184, years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Sedan",
                        year: "2001–2005(рестайлинг)",
                        imageName: "e46_sedan",
                        engines: [
                            Engine(name: "316i", volume: "1.8", code: "M43B18", fuelType: "Бензин", horsepower: 116,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318i", volume: "2.0", code: "N42B20", fuelType: "Бензин", horsepower: 143,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.2", code: "M54B22", fuelType: "Бензин", horsepower: 170,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "325i", volume: "2.5", code: "M54B25", fuelType: "Бензин", horsepower: 192,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "330i", volume: "3.0", code: "M54B30", fuelType: "Бензин", horsepower: 231,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "320d", volume: "2.0", code: "M47D20", fuelType: "Дизель", horsepower: 150,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "330d", volume: "3.0", code: "M57D30", fuelType: "Дизель", horsepower: 184,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Coupe",
                        year: "1999–2003",
                        imageName: "e46_coupe",
                        engines: [
                            Engine(name: "320Ci", volume: "2.2", code: "M54B22", fuelType: "Бензин", horsepower: 170,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325Ci", volume: "2.5", code: "M54B25", fuelType: "Бензин", horsepower: 192,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "330Ci", volume: "3.0", code: "M54B30", fuelType: "Бензин", horsepower: 231,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Coupe",
                        year: "2003–2006(рестайлинг)",
                        imageName: "e46_coupe",
                        engines: [
                            Engine(name: "320Ci", volume: "2.2", code: "M54B22", fuelType: "Бензин", horsepower: 170,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "325Ci", volume: "2.5", code: "M54B25", fuelType: "Бензин", horsepower: 192,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "330Ci", volume: "3.0", code: "M54B30", fuelType: "Бензин", horsepower: 231,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring",
                        year: "1999–2001",
                        imageName: "e46_touring",
                        engines: [
                            Engine(name: "318i Touring", volume: "2.0", code: "N42B20", fuelType: "Бензин", horsepower: 143,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320d Touring", volume: "2.0", code: "M47D20", fuelType: "Дизель", horsepower: 150, years: "",imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring",
                        year: "2001–2005(рестайлинг)",
                        imageName: "e46_touring",
                        engines: [
                            Engine(name: "318i Touring", volume: "2.0", code: "N42B20", fuelType: "Бензин", horsepower: 143,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320d Touring", volume: "2.0", code: "M47D20", fuelType: "Дизель", horsepower: 150,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Compact",
                        year: "2001–2004(рестайлинг)",
                        imageName: "e46_compact",
                        engines: [
                            Engine(name: "316ti", volume: "1.8", code: "N42B18", fuelType: "Бензин", horsepower: 116,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "318ti", volume: "2.0", code: "N42B20", fuelType: "Бензин", horsepower: 143,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Cabriolet",
                        year: "2000–2003",
                        imageName: "e46_cabriolet",
                        engines: [
                            Engine(name: "320Ci", volume: "2.2", code: "M54B22", fuelType: "Бензин", horsepower: 170,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "330Ci", volume: "3.0", code: "M54B30", fuelType: "Бензин", horsepower: 231,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Cabriolet",
                        year: "2003–2006(рестайлинг)",
                        imageName: "e46_cabriolet",
                        engines: [
                            Engine(name: "320Ci", volume: "2.2", code: "M54B22", fuelType: "Бензин", horsepower: 170,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "330Ci", volume: "3.0", code: "M54B30", fuelType: "Бензин", horsepower: 231,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    )
                ]
            ),

            // ---------- E90 / E91 / E92 / E93 ----------
            Generation(
                name: "E90 / E91 / E92 / E93",
                year: "2005–2013",
                imageName: "e90",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan (E90)",
                        year: "2005–2008",
                        imageName: "e90_sedan",
                        engines: [
                            Engine(name: "316i", volume: "1.6", code: "N45B16", fuelType: "Бензин", horsepower: 122,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "N46B20", fuelType: "Бензин", horsepower: 150,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "325i", volume: "2.5", code: "N52B25", fuelType: "Бензин", horsepower: 218,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "330i", volume: "3.0", code: "N52B30", fuelType: "Бензин", horsepower: 272, years: "",imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "335i", volume: "3.0", code: "N54B30", fuelType: "Бензин", horsepower: 306,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "320d", volume: "2.0", code: "N47D20", fuelType: "Дизель", horsepower: 177,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "330d", volume: "3.0", code: "M57D30", fuelType: "Дизель", horsepower: 231,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Sedan (E90)",
                        year: "2008–2011(рестайлинг)",
                        imageName: "e90_sedan",
                        engines: [
                            Engine(name: "316i", volume: "1.6", code: "N45B16", fuelType: "Бензин", horsepower: 122,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "N46B20", fuelType: "Бензин", horsepower: 150,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "325i", volume: "2.5", code: "N52B25", fuelType: "Бензин", horsepower: 218,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "330i", volume: "3.0", code: "N52B30", fuelType: "Бензин", horsepower: 272,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "335i", volume: "3.0", code: "N54B30", fuelType: "Бензин", horsepower: 306,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "320d", volume: "2.0", code: "N47D20", fuelType: "Дизель", horsepower: 177, years: "",imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "330d", volume: "3.0", code: "M57D30", fuelType: "Дизель", horsepower: 231,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring (E91)",
                        year: "2004–2008",
                        imageName: "e91_touring",
                        engines: [
                            Engine(name: "320i Touring", volume: "2.0", code: "N46B20", fuelType: "Бензин", horsepower: 150,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "320d Touring", volume: "2.0", code: "N47D20", fuelType: "Дизель", horsepower: 177,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring (E91)",
                        year: "2008–2012",
                        imageName: "e91_touring",
                        engines: [
                            Engine(name: "320i Touring", volume: "2.0", code: "N46B20", fuelType: "Бензин", horsepower: 150,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "320d Touring", volume: "2.0", code: "N47D20", fuelType: "Дизель", horsepower: 177,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Coupe (E92)",
                        year: "2006–2010",
                        imageName: "e92_coupe",
                        engines: [
                            Engine(name: "320i Coupe", volume: "2.0", code: "N46B20", fuelType: "Бензин", horsepower: 170,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "335i Coupe", volume: "3.0", code: "N54B30", fuelType: "Бензин", horsepower: 306,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Coupe (E92)",
                        year: "2010–2013(рестайлинг)",
                        imageName: "e92_coupe",
                        engines: [
                            Engine(name: "320i Coupe", volume: "2.0", code: "N46B20", fuelType: "Бензин", horsepower: 170,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "335i Coupe", volume: "3.0", code: "N54B30", fuelType: "Бензин", horsepower: 306,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Cabriolet (E93)",
                        year: "2006–2010",
                        imageName: "e93_cabriolet",
                        engines: [
                            Engine(name: "325i Cabriolet", volume: "2.5", code: "N52B25", fuelType: "Бензин", horsepower: 218,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "335i Cabriolet", volume: "3.0", code: "N54B30", fuelType: "Бензин", horsepower: 306, years: "",imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Cabriolet (E93)",
                        year: "2010–2014(рестайлинг)",
                        imageName: "e93_cabriolet",
                        engines: [
                            Engine(name: "325i Cabriolet", volume: "2.5", code: "N52B25", fuelType: "Бензин", horsepower: 218,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "335i Cabriolet", volume: "3.0", code: "N54B30", fuelType: "Бензин", horsepower: 306, years: "",imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    )
                ]
            ),

            // ---------- F30 / F31 / F34 ----------
            Generation(
                name: "F30 / F31 / F34",
                year: "2012–2019",
                imageName: "f30",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan (F30)",
                        year: "2011–2015",
                        imageName: "f30_sedan",
                        engines: [
                            Engine(name: "316i", volume: "1.6", code: "N13B16", fuelType: "Бензин", horsepower: 136,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "N20B20", fuelType: "Бензин", horsepower: 184,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "328i", volume: "2.0", code: "N20B20", fuelType: "Бензин", horsepower: 245,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "335i", volume: "3.0", code: "N55B30", fuelType: "Бензин", horsepower: 306,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "320d", volume: "2.0", code: "N47D20", fuelType: "Дизель", horsepower: 184,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "330d", volume: "3.0", code: "N57D30", fuelType: "Дизель", horsepower: 258,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Sedan (F30)",
                        year: "2015–2019(рестайлинг)",
                        imageName: "f30_sedan",
                        engines: [
                            Engine(name: "316i", volume: "1.6", code: "N13B16", fuelType: "Бензин", horsepower: 136,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "320i", volume: "2.0", code: "N20B20", fuelType: "Бензин", horsepower: 184,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "328i", volume: "2.0", code: "N20B20", fuelType: "Бензин", horsepower: 245,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "335i", volume: "3.0", code: "N55B30", fuelType: "Бензин", horsepower: 306,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "320d", volume: "2.0", code: "N47D20", fuelType: "Дизель", horsepower: 184,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "330d", volume: "3.0", code: "N57D30", fuelType: "Дизель", horsepower: 258,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring (F31)",
                        year: "2012–2015",
                        imageName: "f31_touring",
                        engines: [
                            Engine(name: "320i Touring", volume: "2.0", code: "N20B20", fuelType: "Бензин", horsepower: 184,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "330d Touring", volume: "3.0", code: "N57D30", fuelType: "Дизель", horsepower: 258,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring (F31)",
                        year: "2015–2019(рестайлинг)",
                        imageName: "f31_touring",
                        engines: [
                            Engine(name: "320i Touring", volume: "2.0", code: "N20B20", fuelType: "Бензин", horsepower: 184,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "330d Touring", volume: "3.0", code: "N57D30", fuelType: "Дизель", horsepower: 258,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "GT (F34)",
                        year: "2013–2016",
                        imageName: "f34_gt",
                        engines: [
                            Engine(name: "320i GT", volume: "2.0", code: "N20B20", fuelType: "Бензин", horsepower: 184,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "335i GT", volume: "3.0", code: "N55B30", fuelType: "Бензин", horsepower: 306,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "GT (F34)",
                        year: "2016–2020(рестайлинг)",
                        imageName: "f34_gt",
                        engines: [
                            Engine(name: "320i GT", volume: "2.0", code: "N20B20", fuelType: "Бензин", horsepower: 184,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "335i GT", volume: "3.0", code: "N55B30", fuelType: "Бензин", horsepower: 306,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    )
                ]
            ),

            // G20 / G21
            Generation(
                name: "G20 / G21",
                year: "2018–н.в.",
                imageName: "g20",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan (G20)",
                        year: "2018–2022",
                        imageName: "g20_sedan",
                        engines: [
                            Engine(name: "320i", volume: "2.0", code: "B48B20", fuelType: "Бензин", horsepower: 184,years: "", imageName: "", drive: [ Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive option", imageName: "") ]),
                            Engine(name: "330d", volume: "3.0", code: "B57", fuelType: "Дизель", horsepower: 286, years: "",imageName: "", drive: [ Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive option", imageName: "") ])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Sedan (G20)",
                        year: "2022–н.в.(рестайлинг)",
                        imageName: "g20_sedan",
                        engines: [
                            Engine(name: "320i", volume: "2.0", code: "B48B20", fuelType: "Бензин", horsepower: 184,years: "", imageName: "", drive: [ Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive option", imageName: "") ]),
                            Engine(name: "330d", volume: "3.0", code: "B57", fuelType: "Дизель", horsepower: 286, years: "",imageName: "", drive: [ Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive option", imageName: "") ])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring (G21)",
                        year: "2019–2022",
                        imageName: "g21_touring",
                        engines: [
                            Engine(name: "320d", volume: "2.0", code: "B47", fuelType: "Дизель", horsepower: 190, years: "",imageName: "", drive: [ Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive option", imageName: "") ])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring (G21)",
                        year: "2022–н.в.(рестайлинг)",
                        imageName: "g21_touring",
                        engines: [
                            Engine(name: "320d", volume: "2.0", code: "B47", fuelType: "Дизель", horsepower: 190, years: "",imageName: "", drive: [ Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive option", imageName: "") ])
                        ]
                    )
                ]
            )
        ]
    ),

    // === BMW 5-SERIES ===
    CarModel(
        name: "5-series",
        generation: [

            // ---------- E12 ----------
            Generation(
                name: "E12",
                year: "1972–1981",
                imageName: "e12",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan",
                        year: "---",
                        imageName: "e12_sedan",
                        engines: [
                            Engine(name: "518", volume: "1.8", code: "M10B18", fuelType: "Бензин", horsepower: 90, years: "",imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "520", volume: "2.0", code: "M10B20", fuelType: "Бензин", horsepower: 115,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "525", volume: "2.5", code: "M30B25", fuelType: "Бензин", horsepower: 145,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    )
                ]
            ),

            // ---------- E28 ----------
            Generation(
                name: "E28",
                year: "1981–1988",
                imageName: "e28",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan",
                        year: "---",
                        imageName: "e28_sedan",
                        engines: [
                            Engine(name: "518i", volume: "1.8", code: "M10B18", fuelType: "Бензин", horsepower: 105,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "520i", volume: "2.0", code: "M20B20", fuelType: "Бензин", horsepower: 125,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "525i", volume: "2.5", code: "M30B25", fuelType: "Бензин", horsepower: 150,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "524td", volume: "2.4", code: "M21D24", fuelType: "Дизель", horsepower: 115, years: "",imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    )
                ]
            ),

            // ---------- E34 ----------
            Generation(
                name: "E34",
                year: "1988–1996",
                imageName: "e34",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan",
                        year: "---",
                        imageName: "e34_sedan",
                        engines: [
                            Engine(name: "518i", volume: "1.8", code: "M40B18", fuelType: "Бензин", horsepower: 113,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "520i", volume: "2.0", code: "M50B20", fuelType: "Бензин", horsepower: 150,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "525i", volume: "2.5", code: "M50B25", fuelType: "Бензин", horsepower: 192,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "530i", volume: "3.0", code: "M60B30", fuelType: "Бензин", horsepower: 218,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "540i", volume: "4.0", code: "M60B40", fuelType: "Бензин", horsepower: 286,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "525tds", volume: "2.5", code: "M51D25", fuelType: "Дизель", horsepower: 143,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring",
                        year: "---",
                        imageName: "e34_touring",
                        engines: [
                            Engine(name: "525i Touring", volume: "2.5", code: "M50B25", fuelType: "Бензин", horsepower: 192,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    )
                ]
            ),

            // ---------- E39 ----------
            Generation(
                name: "E39",
                year: "1995–2003",
                imageName: "e39",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan",
                        year: "---",
                        imageName: "e39_sedan",
                        engines: [
                            Engine(name: "520i", volume: "2.0", code: "M52B20", fuelType: "Бензин", horsepower: 150,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "523i", volume: "2.5", code: "M52B25", fuelType: "Бензин", horsepower: 170,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "528i", volume: "2.8", code: "M52B28", fuelType: "Бензин", horsepower: 193,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "530i", volume: "3.0", code: "M54B30", fuelType: "Бензин", horsepower: 231,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "540i", volume: "4.4", code: "M62B44", fuelType: "Бензин", horsepower: 286,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "520d", volume: "2.0", code: "M47D20", fuelType: "Дизель", horsepower: 136,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "530d", volume: "3.0", code: "M57D30", fuelType: "Дизель", horsepower: 193,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring",
                        year: "---",
                        imageName: "e39_touring",
                        engines: [
                            Engine(name: "530d Touring", volume: "3.0", code: "M57D30", fuelType: "Дизель", horsepower: 193,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")])
                        ]
                    )
                ]
            ),

            // ---------- E60 / E61 ----------
            Generation(
                name: "E60 / E61",
                year: "2003–2010",
                imageName: "e60",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan (E60)",
                        year: "---",
                        imageName: "e60_sedan",
                        engines: [
                            Engine(name: "520i", volume: "2.2", code: "N52B22", fuelType: "Бензин", horsepower: 170, years: "",imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "525i", volume: "2.5", code: "N52B25", fuelType: "Бензин", horsepower: 218,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "530i", volume: "3.0", code: "N52B30", fuelType: "Бензин", horsepower: 258,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "545i", volume: "4.4", code: "N62B44", fuelType: "Бензин", horsepower: 333,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "520d", volume: "2.0", code: "M47D20", fuelType: "Дизель", horsepower: 163,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "530d", volume: "3.0", code: "M57D30", fuelType: "Дизель", horsepower: 231,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring (E61)",
                        year: "---",
                        imageName: "e61_touring",
                        engines: [
                            Engine(name: "530xd Touring", volume: "3.0", code: "M57D30", fuelType: "Дизель", horsepower: 235,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    )
                ]
            ),

            // ---------- F10 / F11 ----------
            Generation(
                name: "F10 / F11",
                year: "2010–2017",
                imageName: "f10",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan (F10)",
                        year: "---",
                        imageName: "f10_sedan",
                        engines: [
                            Engine(name: "520i", volume: "2.0", code: "N20B20", fuelType: "Бензин", horsepower: 184, years: "",imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: "")]),
                            Engine(name: "528i", volume: "2.0", code: "N20B20", fuelType: "Бензин", horsepower: 245,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "535i", volume: "3.0", code: "N55B30", fuelType: "Бензин", horsepower: 306, years: "",imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "520d", volume: "2.0", code: "N47D20", fuelType: "Дизель", horsepower: 184,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "530d", volume: "3.0", code: "N57D30", fuelType: "Дизель", horsepower: 258, years: "",imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "535d", volume: "3.0", code: "N57D30", fuelType: "Дизель", horsepower: 313,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring (F11)",
                        year: "---",
                        imageName: "f11_touring",
                        engines: [
                            Engine(name: "530d Touring", volume: "3.0", code: "N57D30", fuelType: "Дизель", horsepower: 258,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    )
                ]
            ),

            // ---------- G30 / G31 ----------
            Generation(
                name: "G30 / G31",
                year: "2017–н.в.",
                imageName: "g30",
                kuzov: [
                    Kuzov(
                        bodyType: "Sedan (G30)",
                        year: "---",
                        imageName: "g30_sedan",
                        engines: [
                            Engine(name: "520i", volume: "2.0", code: "B48B20", fuelType: "Бензин", horsepower: 184,years: "", imageName: "", drive: [Drive(type: "RWD", description: "Задний привод", imageName: ""), Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "530i", volume: "2.0", code: "B48B20O1", fuelType: "Бензин", horsepower: 252, years: "",imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "540i", volume: "3.0", code: "B58B30", fuelType: "Бензин", horsepower: 340,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "520d", volume: "2.0", code: "B47D20", fuelType: "Дизель", horsepower: 190,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "530d", volume: "3.0", code: "B57D30", fuelType: "Дизель", horsepower: 286,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    ),
                    Kuzov(
                        bodyType: "Touring (G31)",
                        year: "---",
                        imageName: "g31_touring",
                        engines: [
                            Engine(name: "520d Touring", volume: "2.0", code: "B47D20", fuelType: "Дизель", horsepower: 190,years: "", imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")]),
                            Engine(name: "540i Touring", volume: "3.0", code: "B58B30", fuelType: "Бензин", horsepower: 340, years: "",imageName: "", drive: [Drive(type: "AWD", description: "xDrive", imageName: "")])
                        ]
                    )
                ]
            )
        ]
    )
]
//let SampleCars : [CarModel] = [
//    CarModel(
//        name: "3-series",
//        generation: [
////            Generation(name: "E21", year: "1975–1982", imageName: "e21"),
////            Generation(name: "E30", year: "1982–1994", imageName: "e30"),
//            Generation(name: "E36", year: "1991–1998", imageName: "e36",
//        kuzov: [
//                Kuzov(bodyType: "e36", imageName: "e36")]),
//            Generation(name: "e46", year: "1998–2005", imageName: "e46",
//        kuzov: [
//                Kuzov(bodyType: "e46", imageName: "")]),
////            Generation(name: "E90 / E91 / E92 / E93", year: "2005–2013", imageName: "e90"),
////            Generation(name: "F30 / F31 / F34", year: "2012–2018", imageName: "f30"),
////            Generation(name: "G20 / G21", year: "2018–н.в.", imageName: "g20"),
//
//        ],
//    ),
////    CarModel(
////        name: "5-series",
////        generation: [
////            Generation(name: "E12", year: "1972–1981", imageName: "e12"),
////            Generation(name: "E28", year: "1981–1988", imageName: "e28"),
////            Generation(name: "E34", year: "1988–1996", imageName: "e34"),
////            Generation(name: "E39", year: "1995–2003", imageName: "e39"),
////            Generation(name: "E60 / E61", year: "2003–2010", imageName: "e60"),
////            Generation(name: "F10 / F11", year: "2010–2017", imageName: "f10"),
////            Generation(name: "G30 / G31", year: "2017–present", imageName: "g30")
////        ]
////    )
//]
