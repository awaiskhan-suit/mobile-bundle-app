# 📱 Mobile Bundle App

A mobile application developed to provide users with a simple and organized interface for exploring **mobile network packages and subscription options** from networks such as **Jazz, Zong, Ufone, and Telenor**.

> **Note:** This is a demonstration/project application. It does not perform real mobile package subscriptions, mobile balance transactions, or real payment processing.

## 🚀 Key Features

### 🌟 Splash Screen

The application starts with a professionally designed **Splash Screen** before navigating the user to the authentication flow.

### 🔐 User Authentication

Users can create an account using:

* Name
* Email
* Phone Number
* Password

After registration, users can log in and access the main application.

### 📱 Network Packages

After login, users can navigate through different mobile network package sections, including:

* Zong Packages
* Ufone Packages
* Telenor Packages
* Jazz Packages

Each network provides different package options for users to explore.

### 📦 Package Subscription Flow

When a user selects a package and presses the **Subscribe** button:

1. The user is taken to the phone number screen.
2. The user enters their phone number.
3. The application validates the entered number.
4. If the number is valid, a confirmation dialog is displayed showing that the selected package was successfully subscribed.
5. If the number is invalid, a **Snackbar** is displayed informing the user that the number is incorrect.

### ✅ Success Dialog

For a valid phone number, the application displays a confirmation dialog containing the name of the selected package and a successful subscription message.

### ⚠️ Error Handling

If the entered phone number does not meet the required validation, the application provides immediate feedback through a Snackbar indicating:

**"This is a wrong number."**

## 🛠️ Technologies Used

* Flutter
* Dart
* Material UI
* Form Validation
* Dialogs
* Snackbars
* Navigation

## 🎯 Project Objective

The main objective of this project was to develop a **mobile bundle/package management interface** that demonstrates authentication, network-based package browsing, form validation, navigation, subscription workflows, success dialogs, and error handling.

The project helped demonstrate how a real-world telecom-style application can be structured while keeping the subscription functionality as a **non-real demonstration workflow**.

## ⭐ Project Highlights

* Professional splash screen
* User registration and login
* Multiple telecom network sections
* Package listing
* Package subscription interface
* Phone number validation
* Success confirmation dialog
* Snackbar-based error handling
* Clean navigation between screens
* User-friendly mobile UI
