#  Mission Log – A SwiftUI Space Missions App

Welcome to **Mission Log**, an iOS app built with SwiftUI that showcases real NASA missions and astronaut information in a beautiful, interactive format. The project features smooth navigation, a custom entry screen, JSON decoding, and a clean dark-themed UI.

Created as part of Paul Hudson’s [100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui) course and extended with custom EntryView logic and reusable UI components.

---

##  Features

-  **Custom Entry Screen** (EntryView) with logo and transition animation
-  Grid layout showing all missions with launch dates and logos
-  Tappable missions to view mission highlights and crew members
-  Tappable crew members to view full astronaut biography
-  Loads data from local `astronauts.json` and `missions.json`
-  Elegant dark-themed gradient background throughout the app

---

##  App Flow

1. **EntryView**: Launch screen with logo, title, and “Next” button  
2. **ContentView**: Displays a grid of missions  
3. **MissionView**: Shows mission image, launch date, highlights, and crew  
4. **AstronautView**: Detailed astronaut profile when a crew member is tapped

---

##  Screenshots

<img width="326" alt="Screenshot 2025-06-29 at 4 57 26 PM" src="https://github.com/user-attachments/assets/b3581c04-8dbe-4a47-9229-6f0b384dee36" />
<img width="321" alt="Screenshot 2025-06-29 at 4 57 04 PM" src="https://github.com/user-attachments/assets/1127be3c-14d0-493e-9575-6cc8965be271" />
<img width="329" alt="Screenshot 2025-06-29 at 4 56 20 PM" src="https://github.com/user-attachments/assets/450a5cd2-78d9-4887-9da9-f4f59e2009fc" />
<img width="322" alt="Screenshot 2025-06-29 at 4 55 02 PM" src="https://github.com/user-attachments/assets/3b696673-c273-4def-a763-64b1ccb3426d" />
<img width="332" alt="Screenshot 2025-06-29 at 4 54 30 PM" src="https://github.com/user-attachments/assets/ed065163-a79a-40d3-a81c-c0d5f340e89a" />

---

##  Tech Stack

- **SwiftUI**
- **Swift 5.9+**
- `NavigationStack` and `NavigationLink`
- `@Binding`, `@State`, and conditional view rendering
- JSON decoding with `Codable`
- Reusable styles via extensions (`darkBackground`, `lightBackground`)

---

##  Project Structure

├── EntryView.swift # Launch screen with transition
├── ContentView.swift # Mission grid with navigation
├── MissionView.swift # Detailed mission view
├── AstronautView.swift # Astronaut profile screen
├── Astronaut.swift # Astronaut model
├── Mission.swift # Mission model
├── Bundle-Decodable.swift # Generic JSON decoder
├── Color+Theme.swift # Custom color extension
├── Assets.xcassets # Mission and astronaut images
├── missions.json # Mission data
├── astronauts.json # Astronaut data
└── Preview Content # Data for Xcode previews

## 🛠 How to Run

1. Clone the repo:

   ```bash
   git clone https://github.com/your-username/mission-log.git
Open in Xcode 15 or later
Run on simulator or real iPhone

##Future Improvements

Add animation when transitioning between views
Implement astronaut achievements or timeline
Bookmark/favorites feature for missions
Add a search or filter bar

##Author

Shalinth
iOS Developer in progress | SwiftUI Enthusiast
GitHub • LinkedIn (add if needed)

##License

This project is for learning and educational purposes.
You may reuse it with credit under the MIT License.

## Credits

Based on Paul Hudson’s Moonshot Project
NASA astronaut and mission data used as part of the course materials

---

