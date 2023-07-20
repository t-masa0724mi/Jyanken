import SwiftUI

struct ContentView: View {
    
    @State var name: String?
    
    var body: some View {
        VStack {
            
            if let n = name {
                Image(n)
            }
            
            Button(action: {
                name = getRandomFile()
            }, label: {
                Text("じゃんけんをする")
            })
        }
    }
    
    func getRandomFile() -> String {
        let i = Int.random(in: 0...2)
        let names:[String] = ["gu", "scissors", "paper"]
        return names[i]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
