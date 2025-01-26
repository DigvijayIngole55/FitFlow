import SwiftUI

import SwiftUI

struct MeditationTab: View {
    @State private var meditationSessions: [MeditationSession] = [
        MeditationSession(id: "1", type: "Relaxing", duration: "5 min", date: "Friday, 19 Jul", time: "10:00 AM"),
        MeditationSession(id: "2", type: "Focus", duration: "10 min", date: "Friday, 19 Jul", time: "07:00 PM")
    ]
    
    var body: some View {
        ZStack {
            Color(red: 14/255, green: 14/255, blue: 14/255).ignoresSafeArea(.all)
            
            VStack(alignment: .leading) {
                HeaderView(
                    date: "Friday, 19 Jul",
                    title: "Meditation",
                    avatar: Image("")
                ).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                
                HStack {
                    Text("Activity")
                        .foregroundColor(.white)
                        .font(.custom("Poppins-Regular", size: 16))
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0)) {
                            
                        }
                    }) {
                        Image(systemName: "plus")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.black)
                            .padding(8)
                            .background(Color(red: 0.75, green: 1.0, blue: 0.0))
                            .clipShape(Circle())
                            .shadow(radius: 5)
                    }
                    .padding(10)
                }

                List {
                    ForEach(meditationSessions) { session in
                        MeditationRow(session: session)
                            .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                            .listRowBackground(Color(red: 14/255, green: 14/255, blue: 14/255))
                            .listRowSeparator(.hidden)
                    }
                }
                .listStyle(PlainListStyle())
                .background(Color(red: 14/255, green: 14/255, blue: 14/255))
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
    }
}

struct MeditationRow: View {
    let session: MeditationSession
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(session.type)
                    .font(.headline)
                    .foregroundColor(.white)
                
                Text(session.duration)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 10) {
                Text(session.date)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Text(session.time)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding(12)
        .background(Color(red: 28/255, green: 28/255, blue: 28/255))
        .cornerRadius(8)
    }
}



#Preview {
    MeditationTab()
}
