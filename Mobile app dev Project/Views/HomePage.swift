//
//  HomePage.swift
//  Mobile app dev Project
//
//  Created by Dominik Bosnjak on 29/11/2020.
//

import SwiftUI
import FirebaseAuth

struct HomePage: View {
    let currentUser = Auth.auth().currentUser
        
    @ObservedObject var viewModel : UserDataViewModel

    
    func printanje(){
        print(viewModel.data.firstName)
    }

     
    var body: some View {
        VStack {
            Button(action: {
                viewModel.getUserInputData(documentId: currentUser!.uid);
                printanje()
                
            }) {
                HStack {
                    Image(systemName: "arrow")
                        .font(.title)
                    Text("Next")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(40)
                                
            }//Button
            //Text("\(user.age), \(user.firstName), \(user.lastName)")
            Text(viewModel.data.firstName)
            
        }
    }
}

//struct HomePage_Previews: PreviewProvider {
//    static var previews: some View {
//        HomePage(user: UserData)
//    }
//}
