# 📱 Flutter Random User Directory App

This Flutter app displays a list of random users fetched from the [Random User API](https://randomuser.me). It features a list and detail screen, with smooth navigation, gender-based styling, and clean architecture.

---

## ✨ Features

- ✅ Fetches 100 users from [https://randomuser.me/api/](https://randomuser.me/api/)
- 🧍 Gender-based card colors (Red for male, Light Yellow for female)
- 👤 Detail screen with:
  - Profile image
  - Email, phone
  - Full address with icons
  - Nationality, age, username, and more

---

## 📦 Tech Stack

- ⚙️ **Flutter** (Dart)
- 🖼️ **Image.network** for profile photos
- 🌐 **HTTP** package for API calls
- 🧠 **Clean architecture**: models, services, screens, utils

---

## 🗂️ Folder Structure

```
lib/
├── model/              # Data models for user fields
│   └── name_model.dart, location_model.dart, etc.
├── screens/            # UI screens
│   ├── home.dart       # User list
│   └── detail.dart     # User detail view
├── services/
│   └── apiservices.dart # API calling logic
├── util/
│   ├── api.dart         # API base URL
│   └── endpoints.dart   # API endpoints
└── main.dart            # App entry point
```

---

## 📸 Screenshots

| User List Screen | User Detail Screen |
|------------------|--------------------|
| ![User List Screen](https://github.com/user-attachments/assets/6aa2bde0-bc7f-480d-b89d-96f7bfcb4d51) | ![User Detail Screen](https://github.com/user-attachments/assets/77833c55-2d8a-4429-9ad3-8a93a31bbcfe) |

---

## 🚀 Getting Started

1. **Clone the repo**

```bash
git clone https://github.com/tanvir-chy-ahmed/random_users.git
cd flutter-randomuser-app
```

2. **Install packages**

```bash
flutter pub get
```

3. **Run the app**

```bash
flutter run
```

---

## 🔗 API

This project uses:

> [https://randomuser.me/api/?results=100](https://randomuser.me/api/?results=100)

---

## 🛠️ To Improve

- Search/filter by name or country
- Pagination or infinite scroll
- Dark mode support
- Error handling and loading shimmer

---

## 👨‍💻 Developer

**Tanvir Ahmed Chowdhury**  
📧 [tanvir.ahmed@example.com]  
🔗 [LinkedIn](https://www.linkedin.com/in/tanvir-ahmed-chy-126191367/)  
💻 [GitHub](https://github.com/tanvir-chy-ahmed)

---

## 📄 License

This project is open-source and free to use.
