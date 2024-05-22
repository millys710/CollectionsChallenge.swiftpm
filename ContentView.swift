import SwiftUI

struct ContentView: View {
    
    @State var index: Int?
    @State var removedMovie: String = "Removed Movie"
    
    // MARK: MVP - Part I
    @State var myFavoriteMovies = ["Mean Girls","Cars", "Clueless","Grease", "Pitch Perfect"]
    @State var myMovieRatings = ["Mean Girls":5,"Cars":5, "Clueless":5,"Grease":4, "Pitch Perfect":4]
    
    
    
    var body: some View {
        
        Group {
            Divider()
            Text("Collections Challenge")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title)
            Divider()
        }
        
        //MARK: MVP - Part II
        
        Text("\(myFavoriteMovies.count) Movies")
            .font(.title3)
        
        List { 
            
            Section {
                //TODO: MVP - Part I
                ForEach(0..<myFavoriteMovies.count, id: \.self) { value in
                    Text(myFavoriteMovies[value])
                }
            } header: {
                Text("Array")
            }
            
            Section {
                //TODO: MVP - Part II
                ForEach(myMovieRatings.sorted(by: >), id: \.key) { key, count in
                    HStack {
                        Text(key)
                        ForEach(0..<count, id: \.self) { _ in
                            Image(systemName: "star")
                                .foregroundColor(.yellow)
                        }
                    }
                }            
            } header: {
                Text("Dictionary")
            }
        }
        VStack(spacing: 10) {
            Button(action: {
                //MARK: Stretch #1
                myFavoriteMovies.insert("Legally Blonde", at:2)
                myFavoriteMovies.insert("Princess and the Frog", at:1)
                myMovieRatings = ["Mean Girls":5,"Cars":5, "Clueless":5,"Grease":4, "Pitch Perfect":4, "Princess and the Frog":4, "Legally Blond":5]
                
                //myMovieRatings.append ("Princess and the Frog":4) 
               // myMovieRatings.append ("Legally Blond":5)
                
                
                
            }, label: {
                Text("Stretch #1")
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.gray)
                    .clipShape(Capsule())
            })
            
            Button(action: {
                //MARK: Stretch #2
                myFavoriteMovies.insert("Barbie",at:3)
                  myFavoriteMovies.insert("The Hunger Games: The Ballad of Songbirds & Snakes",at: 4)
                
                myMovieRatings = ["Mean Girls":5,"Cars":5, "Clueless":5,"Grease":4, "Pitch Perfect":4, "Princess and the Frog":4, "Legally Blond":5, "Barbie":5,"The Hunger Games: The Ballad of Songbirds & Snakes":5]
                
                
            }, label: {
                Text("Stretch #2")
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.gray)
                    .clipShape(Capsule())
            })
            
            Button(action: {
                //MARK: Stretch #3
//                myFavoriteMovies.remove(at: index)
//                myMovieRatings.removeValue(forKey: "\(index)")
//               
                
                
                
            }, label: {
                Text("Stretch #3")
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.gray)
                    .clipShape(Capsule())
                
            })
            
        }
        .padding()
        
        HStack {
            TextField("Enter Index #", value: $index, format: .number)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: .infinity)
            
            Text(removedMovie)
                .frame(maxWidth: .infinity)
        }
        .padding()
        
        Group {
            Image("MobileMakersEduNB")
                .resizable()
                .frame(maxWidth: .infinity)
                .scaledToFit()
        }
        .padding()
    }
}
