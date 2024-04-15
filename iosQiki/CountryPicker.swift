//
//  CountryPicker.swift
//  iosQiki
//
//  Created by Sachin on 06/03/24.
//

import SwiftUI

struct Country: Identifiable {
    let id = UUID()
    let code: String
    let name: String
    let flag: String
}

struct CountryPicker: View {
    @Binding var selectedCountry: Country?
    
    let countries: [Country]
    
    var body: some View {
        NavigationView {
            List(countries) { country in
                Button(action: {
                    self.selectedCountry = country
                }) {
                    HStack {
                        Text(country.flag)
                            .font(.system(size: 24))
                        Text(country.name)
                            .font(.headline)
                        Spacer()
                    }
                }
            }
            .navigationBarTitle("Select Country")
        }
    }
}

struct ContentView: View {
    @State private var selectedCountry: Country?
    
    let countries = [
        Country(code: "US", name: "United States", flag: "🇺🇸"),
        Country(code: "GB", name: "United Kingdom", flag: "🇬🇧"),
        Country(code: "CA", name: "Canada", flag: "🇨🇦"),
        // Add more countries as needed
    ]
    
    var body: some View {
        VStack {
            if let selectedCountry = selectedCountry {
                Text("Selected Country: \(selectedCountry.name)")
            } else {
                Text("No country selected")
            }
            
            Button("Select Country") {
                
                CountryPicker(selectedCountry: $selectedCountry, countries: countries)
            }
            .padding()
            .sheet(isPresented: .constant(true)) {
                CountryPicker(selectedCountry: $selectedCountry, countries: countries)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//#Preview {
//    CountryPicker(selectedCountry: , countries: )
//}
