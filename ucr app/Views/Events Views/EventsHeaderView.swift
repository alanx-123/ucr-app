import SwiftUI

struct EventsHeaderView: View
{
    var body: some View
    {
        VStack (spacing: 1){
            HStack{
                Text("Events")
                    .font(.custom("Avenir Next", size: 30)) // change font
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .padding(.leading, 30)
                Spacer()
            }
            HStack{
                Rectangle()
                    .frame(height: 4)
                    .frame(width: UIScreen.main.bounds.width * 0.4)
                    .opacity(0.5)
                    .foregroundColor(.red)
                    .padding(.leading, 30)
                Spacer()
            }
            Spacer()
        }
            .padding(.top, 50)

    }
}


