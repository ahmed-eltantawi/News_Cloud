<p align="center">
  <img src="assets/appIcon.png" alt="News Cloud Logo" width="120" height="120">
</p>

<h1 align="center">📰 News Cloud</h1>

<p align="center">
  <strong>A Modern News Aggregator Built with Flutter</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.10+-blue?logo=flutter" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-3.0+-blue?logo=dart" alt="Dart">
  <img src="https://img.shields.io/badge/Platform-Android%20|%20iOS%20|%20Web%20|%20Desktop-green" alt="Platforms">
  <img src="https://img.shields.io/badge/License-MIT-yellow" alt="License">
</p>

---

## 📋 About

**News Cloud** is a comprehensive news aggregator that delivers the latest headlines from trusted sources worldwide. Built with Flutter, it supports multiple platforms with an elegant and user-friendly Material Design interface.

---

## 🎬 Demo Video

<p align="center">
  <a href="assets/videoDemo/Android_demo.mp4">
    <img src="assets/screenShots/home_page.png" alt="Demo Video Thumbnail" width="250">
    <br>
    <strong>📹 Click to Watch Demo</strong>
  </a>
</p>

https://github.com/user-attachments/assets/videoDemo/Android_demo.mp4

---

## 📸 Screenshots

<p align="center">
  <img src="assets/screenShots/home_page.png" alt="Home Page" width="250">
  &nbsp;&nbsp;&nbsp;
  <img src="assets/screenShots/category_newss_creen.png" alt="Category News" width="250">
  &nbsp;&nbsp;&nbsp;
  <img src="assets/screenShots/article_webView_screen.png" alt="Article View" width="250">
</p>

<p align="center">
  <em>Home Page | Category News | Article Web View</em>
</p>

---

## ✨ Features

### 🏠 Home Screen
- Displays latest general news in an attractive card layout
- Horizontal scrollable category list for quick navigation
- Automatic news refresh with loading animations
- Smooth bouncing scroll physics

### 📂 News Categories
The app supports **7 different news categories**:

| Icon | Category | Description |
|------|----------|-------------|
| 💼 | **Business** | Business & Economy News |
| 🎬 | **Entertainment** | Entertainment & Arts News |
| 🔬 | **Science** | Science & Discovery News |
| 🏥 | **Health** | Health & Medical News |
| ⚽ | **Sports** | Sports News |
| 💻 | **Technology** | Technology News |
| 📰 | **General** | General Headlines |

### 📖 Article Viewer
- Full article viewing within the app via WebView
- Linear progress indicator shows page loading status
- JavaScript support for interactive websites
- Error handling for unavailable articles

### 🎨 Design
- Clean and modern Material Design UI
- Custom app branding with "News" + "Cloud" styled title
- Placeholder images during loading (GIF animation)
- Fallback images for missing article thumbnails
- Rounded corners and smooth animations

### ⚡ Performance
- Efficient image loading with network image handling
- Robust error handling for API and network issues
- FutureBuilder pattern for asynchronous data loading

---

## 🏗️ Project Structure

```
lib/
├── main.dart                    # App entry point
├── Models/                      # Data models
│   ├── article_model.dart       # Article data model
│   ├── CategoryModel.dart       # Category data model
│   └── newsModels.dart          # News models
├── Views/                       # Screens/Pages
│   ├── homesView.dart           # Main home screen
│   ├── CategoryNewsView.dart    # Category-specific news
│   └── article_model.dart       # Article WebView screen
├── Widgets/                     # Reusable components
│   ├── items/
│   │   ├── ArticaleWidget.dart  # Article card widget
│   │   └── CategoryWidget.dart  # Category card widget
│   ├── lists/
│   │   ├── Category_List.dart   # Horizontal category list
│   │   └── News_List.dart       # Vertical news list
│   ├── errors/                  # Error handling widgets
│   │   ├── article_web_error.dart
│   │   └── errorsInAPI.dart
│   ├── newsListBulider.dart     # News list with FutureBuilder
│   └── loadingArticles.dart     # Loading placeholder
└── Services/
    └── get_news.dart            # News API service
```

---

## 🛠️ Technologies Used

| Technology | Version | Purpose |
|------------|---------|---------|
| **Flutter** | ^3.10.1 | Cross-platform UI framework |
| **Dart** | ^3.10.1 | Programming language |
| **Dio** | ^5.9.0 | HTTP client for API requests |
| **WebView Flutter** | ^4.13.1 | In-app web page viewing |
| **NewsAPI** | - | News data source |

---

## 🚀 Installation

### Prerequisites
- Flutter SDK 3.10+
- Dart SDK 3.0+
- Android Studio / VS Code
- API key from [NewsAPI](https://newsapi.org/)

### Setup Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/news_cloud.git
   cd news_cloud
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure API Key**
   
   Open `lib/Services/get_news.dart` and replace with your API key:
   ```dart
   'https://newsapi.org/v2/top-headlines?apikey=YOUR_API_KEY&category=$category'
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

---

## 📱 Supported Platforms

| Platform | Status |
|----------|--------|
| 🤖 Android | ✅ Supported |
| 🍎 iOS | ✅ Supported |
| 🌐 Web | ✅ Supported |
| 🖥️ Windows | ✅ Supported |
| 🍏 macOS | ✅ Supported |
| 🐧 Linux | ✅ Supported |

---

## 🔮 Future Enhancements

- [ ] 🌙 Dark Mode support
- [ ] 🔖 Save favorite articles
- [ ] 🔍 Search functionality
- [ ] 🔔 Breaking news notifications
- [ ] 🌍 Multiple news source support
- [ ] 📤 Article sharing
- [ ] 💾 Offline reading mode
- [ ] 🌐 Multi-language support

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<p align="center">
  <strong>Developed with ❤️ using Flutter</strong>
</p>

<p align="center">
  <strong>⭐ If you like this project, don't forget to give it a star! ⭐</strong>
</p>
