//
//  ContentView.swift
//  Shared
//
//  Created by Bob Bulliard on 11/19/21.
//

import SwiftUI
struct UserModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let points: Int
    let isVerified: Bool
}
class ArrayModificationViewModel: ObservableObject{
    
@Published var dataArray: [UserModel] = []
    
init() {getusers()

    
}
func getusers() {
    let user1 = UserModel(name: "Nick", points: 6, isVerified: true)
    let user2 = UserModel(name: "bob", points: 6, isVerified: true)
    let user3 = UserModel(name: "henry", points: 6, isVerified: false)
    let user4 = UserModel(name: "fred", points: 6, isVerified: false)
    let user5 = UserModel(name: "john", points: 6, isVerified: false)
    let user6 = UserModel(name: "bill", points: 6, isVerified: false)
    let user7 = UserModel(name: "paul", points: 6, isVerified: false)
    let user8 = UserModel(name: "Nick", points: 6, isVerified: false)
    let user9 = UserModel(name: "isac", points: 6, isVerified: false)
    let user10 = UserModel(name: "newton", points: 6, isVerified: false)
    
    self.dataArray.append(contentsOf: [
    user1,
    user2,
    user3,
    user4,
    user5,
    user6,
    user7,
    user8,
    user8,
    user10])


}}


struct ContentView: View {
    @StateObject var vm = ArrayModificationViewModel()
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
            ForEach(vm.dataArray) { user in
                VStack (alignment: .leading){
                Text(user.name)
                .font(.headline)
                Text("Points: \(user.points ) " ) }
        }
            .foregroundColor(.green)
            .background(Color.blue)
            }}}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
