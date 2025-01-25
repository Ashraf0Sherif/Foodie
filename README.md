# 🍜 Foodie  

A beautifully designed **Flutter** application for food delivery with a robust architecture and seamless functionality.  

---

## 🌟 Features  

### **Firebase Integration**  
- **App Distribution**: Share builds effortlessly for testing.  
- **Authentication**: Secure user login and registration.  
- **Firestore**: Real-time database for restaurant and order data.  
- **Pagination**: Load data efficiently for a smooth user experience.  
- **Storage**: Upload and store images (e.g., profile pictures, food items).  

### **Navigation**  
- **Bottom Navigation Bar**:  
  - **Home**: Explore featured dishes.  
  - **Search**: Find specific dishes.  
  - **Cart**: Review and modify orders before checkout.  
  - **Profile**: Manage account details and order history.  

### **State Management**  
- **Bloc/Cubit**: Efficient and organized state handling.  

### **Architecture**  
- **MVVM**: Clean and scalable code structure.  
- **Dependency Injection**: Simplified with tools like GetIt.  

### **Localization**  
- **Multi-Language Support**: Supports English and Arabic.  
- **Preferences**: Save user language settings for a personalized experience.  

### **APIs & Payments**  
- **REST API**: Smooth integration with external services.  
- **PayMob**: Secure and seamless payment processing.  

### **Development Tools**  
- **Flavors**: Separate setups for development, and production.  
- **CI/CD**: Automate testing and deployment with GitHub Actions and Fastlane.  
- **Environment Management**: Use `.env` and GitHub Secrets to handle sensitive data securely.  

### **UI/UX Highlights**  
- **Onboarding**: Guide users through app features on first use.  
- **Splash Screen**: Sleek entry for a polished experience.  
- **Figma to App**: The app's UI was developed by converting a Figma design into a fully functional mobile app. The design can be found <a href="https://www.figma.com/community/file/1000486391488737986/foodie-food-delivery-app" target="_blank">here</a>.

### **User-Centric Features**  
- **Cart Management**: Easy order customization and checkout.  
- **Payment Options**: Enter payment details securely.  
- **Profile Management**: Edit personal details, view order history, and manage saved addresses.  

---

## 🖼️ Screenshots  

### 🌟 **Splash Screen**
- **Polished First Impression**: A sleek and visually appealing splash screen welcomes users to the app.
- **Brand Identity**: Displays the app's logo and name, creating a strong first impression.
- **Smooth Transition**: Seamlessly transitions to the onboarding screen or home screen based on whether the user is a first-time user.

<img src="https://github.com/user-attachments/assets/cd7dc67d-289a-4899-80df-83c0fecd3ccd" alt="MuMu12-20250124-193831" width="300" height="auto" />


### 🎉 **Onboarding**
- **First-Time User Experience**: A visually appealing onboarding screen introduces users to the app's key features and functionality.
- **Interactive Walkthrough**: Users can swipe through multiple screens to learn about the app's offerings.
- **Skip Option**: Users can skip the onboarding process and proceed directly to the app.

<img src="https://github.com/user-attachments/assets/8d53f123-6a28-402e-baf9-ea0806a810e7" alt="MuMu12-20250124-193831" width="300" height="auto" />


### 🔐 **Authentication**
- **Secure Login**: Users can securely log in using their email and password.
- **Sign-Up**: New users can create an account with email and password.
- **Forgot Password**: Users can reset their password via email if they forget it.
- **Firebase Authentication**: Ensures secure and reliable user authentication.

![AUTH](https://github.com/user-attachments/assets/0f7dce52-fb35-4cfb-80a1-6f4e8825c291)


### 🏠 **Home**  
Discover restaurants, offers, and popular dishes. 

![HOME](https://github.com/user-attachments/assets/634a6218-d413-45c1-93c8-01a5ccb54d50)


### 🔍 **Search**  
Quickly find dishes.  

![SEARCH](https://github.com/user-attachments/assets/45eab4b4-07c7-4644-83d9-8ccc83c4072d)


### 🛒 **Cart**  
Review and adjust your order before checkout.  

![CART](https://github.com/user-attachments/assets/562c2892-2929-40f1-abec-35f19021fdaa)

 
### 👤 **Profile**  
Update account details, manage addresses, and track orders.  

![PROFILE](https://github.com/user-attachments/assets/ab32f59e-5039-4f42-85e5-25ac6c0d7c1a)
![ADDRESSES](https://github.com/user-attachments/assets/6c11dc34-dd90-46f4-8464-165cdc9f0330)
![RECEIPTS](https://github.com/user-attachments/assets/9b05d6ce-b7bd-4889-8612-21b2dd52ad4c)
![LANGUAGES](https://github.com/user-attachments/assets/e2cc53b4-5468-4ca7-911b-95be8bd1705d)


---

## 🛠️ Tech Stack  
- **Flutter**: Cross-platform framework.  
- **Firebase**: Authentication, Firestore, Storage, and more.  
- **Bloc/Cubit**: State management.  
- **PayMob**: Payment gateway integration.  
- **Postman**: API testing and validation.  
- **Most Important Used Dependencies**:  
  - `flutter_bloc`: State management using Bloc.  
  - `bloc`: Core Bloc library.  
  - `freezed`: Code generation for immutable data classes.  
  - `dio`: Simplified HTTP requests and APIs.  
  - `cached_network_image`: Efficient image caching.  
  - `shared_preferences`: Local key-value storage for small data.  
  - `intl`: Internationalization and localization support.  
  - `flutter_screenutil`: Adaptive screen size and font scaling.  
  - `flutter_native_splash`: Easy splash screen configuration.  
  - `flutter_dotenv`: Environment variable management.  
  - `skeletonizer`: Placeholder skeleton screens.  
  - `internet_connection_checker`: Check internet connectivity.  
  - `get_it`: Dependency injection for managing app dependencies.  

---

## 💡 Personal Reflection  
This project has been an incredible learning experience for me. I gained hands-on experience with:  

- **Flutter**: Building a responsive and dynamic user interface.  
- **Firebase**: Integrating authentication, Firestore, and Firebase Storage for backend functionality.  
- **State Management**: Using Bloc/Cubit to manage app state effectively.  
- **API Integration**: Working with REST APIs and testing them using Postman.  
- **Localization**: Implementing multi-language support using intl and Shared Preferences.  
- **CI/CD**: Setting up GitHub Actions and Fastlane for automated workflows.  
- **GitHub Secrets**: Managing sensitive keys securely during development and deployment.  

I also learned the importance of clean architecture, proper documentation, and testing to ensure a robust and maintainable application. This project has significantly improved my skills as a developer, and I’m excited to apply what I’ve learned to future projects!

