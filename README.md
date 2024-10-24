# Advance Flutter Chapter 1


## ✔️ 1.1 Switch Dark Theme to Light Theme [📂 (source)](https://github.com/Zimil-Patel/advance_flutter_ch1/tree/master/lib/switch%20theme)

In Flutter, `theme`, `darkTheme`, and `themeMode` in `MaterialApp` are used to control the app's appearance based on light and dark themes:

1. **`theme`**: Defines the app's **light theme** using `ThemeData`. It applies when the app is in light mode.

   ```dart
   theme: ThemeData(
     brightness: Brightness.light,
     primaryColor: Colors.blue,
   )
   ```

2. **`darkTheme`**: Defines the app's **dark theme** using `ThemeData`. It applies when the app is in dark mode.

   ```dart
   darkTheme: ThemeData(
     brightness: Brightness.dark,
     primaryColor: Colors.grey,
   )
   ```

3. **`themeMode`**: Controls whether the app follows the system setting or uses a specific theme. It can have these values:
   - `ThemeMode.system` (default): Uses the system setting (light or dark).
   - `ThemeMode.light`: Always uses the light theme.
   - `ThemeMode.dark`: Always uses the dark theme.


   ```dart
   themeMode: ThemeMode.system,
   ```

These settings allow you to provide both light and dark themes, and toggle between them based on system preferences or app-specific logic.

### Screenshots 📷

<div align="left">
<img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.1/snap1.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.1/snap2.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
</div>

### Video Preview 🎥


https://github.com/user-attachments/assets/d555dcf4-a89c-423c-86eb-529c1c7b8519


## ✔️ 1.2 Counter using provider [📂 (source)](https://github.com/Zimil-Patel/advance_flutter_ch1/tree/master/lib/provider%20using%20counter)

### Provider in Flutter - Documentation

#### Definition:
**Provider** is a state management solution in Flutter, which simplifies data sharing between widgets by providing an efficient way to manage state and notify listeners when changes occur. It allows widgets to listen and respond to changes in application data without needing to pass data down through multiple widget levels (also called "prop drilling").

#### Key Points:
- **Scoped access** to data: Provider allows widgets to access the state they need without passing it through widget constructors.
- **Listeners**: It automatically notifies listeners when the state changes, and the UI is updated accordingly.
- **Types of Providers**:
  - `ChangeNotifierProvider`: Notifies its listeners when changes occur in the provided object.
  - `MultiProvider`: Allows combining multiple providers in the app.
  - `Consumer`: Rebuilds only parts of the widget tree that are affected by changes in the provider.
  
- **Efficiency**: Only the necessary parts of the widget tree are rebuilt when state changes, improving performance.

---

#### Example Syntax: Counter App

##### 1. **Provider Class:**

```dart
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;

  void increaseCounter() {
    counter++;
    notifyListeners(); // Notify listeners about the change
  }
}
```

##### 2. **Usage in UI:**

```dart
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'counter_provider.dart';

            // Listening to provider's counter value
            Text(
              '${Provider.of<CounterProvider>(context).counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
     
      floatingActionButton: FloatingActionButton(
        onPressed: () => Provider.of<CounterProvider>(context, listen: false).increaseCounter(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
```

In this example:
- The `CounterProvider` manages the counter's state.
- The `CounterScreen` displays the counter value and has a button to increment it using the provider.

This basic example shows how you can easily manage and display state using `Provider` in Flutter.

### Screenshots 📷

<div align="left">
<img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.2/snap1.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.2/snap2.png" height = 510 width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
</div>

### Video Preview 🎥


https://github.com/user-attachments/assets/c7203058-160a-405e-8967-5599e710f30f


## ✔️ 1.3 TODO-APP (using shared_preferences, provider) [📂 (source)](https://github.com/Zimil-Patel/advance_flutter_ch1/tree/master/lib/todo%20app)


# TODO App Documentation

## Overview
The TODO app allows users to create, edit, complete, and delete tasks while providing options for dark and light themes. It leverages the Provider package for state management.

## Features
- **Create Task**: Users can add new tasks with titles and descriptions.
- **Edit Task**: Users can modify existing tasks.
- **Mark as Complete**: Users can mark tasks as completed, providing visual feedback.
- **Delete Task**: Users can remove tasks from the list.
- **Dark and Light Theme**: Users can toggle between dark and light themes for a personalized experience.

## Example
Here’s a brief code snippet demonstrating how to use the Provider to manage tasks:

```dart
// Adding a new task
provider.addToList(title: title, description: description);

// Editing an existing task
provider.updateData(index: index, title: newTitle, description: newDescription);

// Marking a task as complete
provider.toggleComplete(index);
```

### Screenshots 📷

<div align="left">
<img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.3/snap1.png" height = 580 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.3/snap2.png" height = 580 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.3/snap3.png" height = 580 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; 

<img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.3/snap4.png" height = 500 width = 250> &nbsp;&nbsp;&nbsp;&nbsp;
</div>

### Video Preview 🎥

https://github.com/user-attachments/assets/83ba6a28-384f-412d-8a78-ef08f3cb18bb


## ✔️ 1.4 Chanting App (using shared_preferences) [📂 (source)](https://github.com/Zimil-Patel/advance_flutter_ch1/tree/master/lib/chant%20app)

# Chanting App

This documentation outlines the core features of the **Chanting App**, a simple app that allows users to track their chanting progress by saving their mala count, total count, and current count. The app also provides functionality to save images and persist the current set image using `shared_preferences` for persistent storage.


## Features

The **Chanting App** offers the following key features:

1. **Save Mala Count**: Tracks the number of malas completed by the user.
2. **Total Count**: Maintains the overall count of chants across sessions.
3. **Current Count**: Saves the count for the current session, allowing users to resume later.
4. **Save Image**: Allows the user to save images related to their chants, such as bead sets or visual aids.
5. **Save Current Set Image**: Users can save and retrieve the current image used in the chanting session.

Certainly! Below is a concise sample documentation for using `shared_preferences` in a Flutter project. 

# Shared Preferences in Flutter


## Installation

Add the `shared_preferences` dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.0.16  # Check for the latest version
```

Run the following command to install the package:

```bash
flutter pub get
```

## Usage

To use `shared_preferences`, follow these steps:

1. **Import the package**:
   ```dart
   import 'package:shared_preferences/shared_preferences.dart';
   ```

2. **Save data**:
   ```dart
   Future<void> saveData(String key, String value) async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     await prefs.setString(key, value);
   }
   ```

3. **Retrieve data**:
   ```dart
   Future<String?> getData(String key) async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     return prefs.getString(key);
   }
   ```


### Screenshots 📷

<div align="left">
<img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.4/snap1.png" height = 580 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.4/snap2.png" height = 580 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.4/snap3.png" height = 580 width = 300> &nbsp;&nbsp;&nbsp;&nbsp;
</div>

### Video Preview 🎥


https://github.com/user-attachments/assets/9fe2e101-6fd7-4877-bfc4-6b6b4a14f978


## ✔️ 1.5 Contact us Page [📂 (source)](https://github.com/Zimil-Patel/advance_flutter_ch1/tree/master/lib/contact%20us%20page)

# url_launcher

A Flutter plugin for launching a URL in the mobile platform. Supports different types of URLs, such as web URLs, phone numbers, emails, and SMS.

## Installation

Add `url_launcher` to your `pubspec.yaml` file:

```yaml
dependencies:
  url_launcher: ^6.1.9  # Check for the latest version on pub.dev
```

Then, run:

```bash
flutter pub get
```

## Usage

1. **Import the package:**

```dart
import 'package:url_launcher/url_launcher.dart';
```

2. **Launch a URL:**

```dart
void _launchURL() async {
  final Uri url = Uri.parse('https://flutter.dev');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
```

3. **Launch different types of URLs:**

- **Phone Call:**

```dart
final Uri phoneUrl = Uri(scheme: 'tel', path: '+1234567890');
await launchUrl(phoneUrl);
```

- **Send SMS:**

```dart
final Uri smsUrl = Uri(scheme: 'sms', path: '+1234567890');
await launchUrl(smsUrl);
```

- **Send Email:**

```dart
final Uri emailUrl = Uri(
  scheme: 'mailto',
  path: 'example@example.com',
  query: 'subject=Hello&body=Welcome to Flutter!',
);
await launchUrl(emailUrl);
```

## Additional Options

`launchUrl` allows customization using the `LaunchOptions` parameter.

- **Force WebView:**

```dart
await launchUrl(url, mode: LaunchMode.inAppWebView);
```


### Screenshots 📷

<div align="left">
<img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.5/snap1.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp;
</div>

### Video Preview 🎥


https://github.com/user-attachments/assets/20aca415-e1b5-40af-83a4-7dc8ff25219a


## ✔️ 1.5 Photo Gallery With Biometric Authentication [📂 (source)](https://github.com/Zimil-Patel/advance_flutter_ch1/tree/master/lib/gallery%20auth)


### Usage Definition:**
The `local_auth` package allows Flutter apps to authenticate users using biometric methods (fingerprint, face recognition, etc.) or device passcodes. This provides an added layer of security to your application.

###  Add Dependency:**
First, add the `local_auth` package to your `pubspec.yaml` file:

```yaml
dependencies:
  local_auth: ^2.1.0  # or the latest version
```


### Permissions to Add:**
#### **For Android:**
In `android/app/src/main/AndroidManifest.xml`, add the following permission:

```xml
<uses-permission android:name="android.permission.USE_BIOMETRIC" />
<uses-permission android:name="android.permission.USE_FINGERPRINT" />
```

Also, add the `Biometric` authentication declaration under the `application` tag:

```xml
<application ...>
    <meta-data android:name="flutterEmbedding" android:value="2" />
</application>
```

#### **For iOS:**
In your `ios/Runner/Info.plist`, add:

```xml
<key>NSFaceIDUsageDescription</key>
<string>We need to use Face ID for authentication</string>
```

### Single Authentication Code:**


```dart
// method to authenticate
  Future<void> authenticateUser(BuildContext context) async{
    final LocalAuthentication auth = LocalAuthentication();
    bool canAut = await auth.canCheckBiometrics && await auth.isDeviceSupported();

    if(canAut){
      await auth.authenticate(localizedReason: "Verify to open hidden album");
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HiddenPage(),));
    } else {
      log('Warning: Authentication issue!');
    }
```

### Important Points:**
- **`canCheckBiometrics`**: This method checks if the device supports biometric authentication.
- **`authenticate()`**: This method triggers the biometric authentication process.
- **`localizedReason`**: This is the message that will be displayed to the user explaining why authentication is required.


### Screenshots 📷

<div align="left">
<img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.6/snap1.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.6/snap3.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.6/snap2.png" height = 590 width = 300>

<img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.6/snap4.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp;

</div>

### Video Preview 🎥

https://github.com/user-attachments/assets/e3471ee7-ca08-4bf2-8fb8-a2a7386ebee3

## ✔️ 1.6 Provider Tree

Here’s a short GitHub documentation about **State**, **State Management**, and the **Provider** package in Flutter:

---

# State, State Management, and Provider in Flutter

## **State**
State in Flutter represents data that can change over time or in response to user interaction. It affects how the UI looks at a particular point in time.

There are two types of state:
1. **Ephemeral State**: Temporary state within a single widget.
2. **App State**: Shared state across multiple parts of the app.

---

## **State Management**
State management refers to the techniques used to manage the flow of data and changes across an application. Efficient state management ensures a responsive and maintainable app.

Popular methods in Flutter:
- **setState**: Directly updates the state of a widget.
- **InheritedWidget**: Allows passing data down the widget tree.
- **Provider**: A powerful and scalable approach using a third-party package.

---

## **Provider Package**
The `provider` package is a wrapper around InheritedWidget, making it easier to manage and share state across the widget tree. It’s one of the most popular solutions for state management in Flutter.

### **Features of Provider**:
- **Simplifies access to data**: Provides easy-to-use patterns for sharing data.
- **Reactivity**: Automatically rebuilds widgets when the data they depend on changes.
- **Loose coupling**: Decouples business logic from UI code.
- **Granular control**: You can listen to changes at any level in the widget tree.
- **Multiple Providers**: Allows injecting multiple objects into the widget tree.


### **Useful Resources**
- [Provider Documentation](https://pub.dev/packages/provider)
- [Flutter State Management Documentation](https://flutter.dev/docs/development/data-and-backend/state-mgmt)


### Screenshots 📷

<img src = "https://github.com/Zimil-Patel/AdvFlutterCh1/blob/main/snaps/1.3/stateManagementFlow.drawio.png" height = "700" width = "650">


## ✔️ 1.7 One Time Intro Screen in Flutter [📂 (source)](https://github.com/Zimil-Patel/advance_flutter_ch1/tree/master/lib/one%20time%20intro)

This Flutter application demonstrates a flow where users see an introductory page only once. Once the intro is completed, its value is stored in **SharedPreferences**. Upon subsequent launches of the app, users are redirected directly to the home page.

## Features

- Intro Page: Displayed to users on the first app launch.
- Home Page: Users are redirected to this page after the intro is completed or upon reopening the app.
- Data Persistence: User's intro completion status is stored using **SharedPreferences**.

## How It Works

1. **Intro Page**  
   The user is presented with an introduction page when the app is launched for the first time. After completion, a flag (`isIntroCompleted`) is saved in **SharedPreferences**.

2. **Home Page**  
   If the intro has been completed previously, users are automatically redirected to the home page when reopening the app.

3. **SharedPreferences**  
   We use **SharedPreferences** to store the `isIntroCompleted` flag. On each app launch, the app checks this flag to determine whether to show the intro or home page.


### Screenshots 📷

<div align="left">
<img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.7/snap1.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.7/snap2.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.7/snap3.png" height = 590 width = 300>

</div>

### Video Preview 🎥


https://github.com/user-attachments/assets/831347b0-b743-4ee8-894e-945a036dbd52

## ✔️ 1.8 Provider & Change Theme using Provider [📂 (source)](https://github.com/Zimil-Patel/advance_flutter_ch1/tree/master/lib/theme%20using%20provider)


# Flutter Theme Preference (Light/Dark Mode) using Provider and SharedPreferences

This Flutter application demonstrates how to save and retrieve a theme preference (light/dark mode) using **Provider** for state management and **SharedPreferences** for data persistence.

## Features

- **Theme Switching**: Users can switch between light and dark themes.
- **Data Persistence**: The selected theme preference is saved using **SharedPreferences**.
- **State Management**: **Provider** is used to manage and update the app's theme state across the app.

## How It Works

1. **Theme Selection**  
   The user can toggle between light and dark themes. The selected theme is saved in **SharedPreferences** as `isDark`.

2. **SharedPreferences**  
   On app launch, the theme preference (`isDark`) is retrieved from **SharedPreferences** and applied. If no preference is found, the default theme is light mode.

3. **Provider**  
   The **Provider** package is used to handle the theme state and notify the app to rebuild the UI when the theme changes.

```

### Theme Provider

The **ThemeProvider** class manages the app's theme state and allows switching between light and dark themes.

```dart
class ThemeProvider extends ChangeNotifier {
  bool isDarkMode;

  ThemeProvider(this.isDarkMode);

  void toggleTheme() async {
    isDarkMode = !isDarkMode;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDark', isDarkMode);
    notifyListeners();
  }
}
```


### Screenshots 📷

<div align="left">
<img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.8/snap1.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.8/snap2.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; 
   
</div>

### Video Preview 🎥


https://github.com/user-attachments/assets/fda05f23-4aaf-4ea4-8c09-c15d35eeaa1d


## ✔️ 1.9 Create Registration Page using Stepper Widget [📂 (source)](https://github.com/Zimil-Patel/advance_flutter_ch1/tree/master/lib/stepper)

# Flutter Registration Form with Vertical and Horizontal Steppers

This Flutter project demonstrates how to implement a multi-step **Registration Form** using both vertical and horizontal steppers. The form guides users through a sequence of steps to complete their registration.

## Features

- **Multi-Step Form**: Users fill in their registration details step by step.
- **Vertical and Horizontal Steppers**: Supports both vertical and horizontal step progressions for different UI layouts.
- **Form Validation**: Each step validates the input before proceeding to the next.

## How It Works

1. **Vertical Stepper**  
   A vertical stepper is displayed by default, guiding the user through the registration process from top to bottom.

2. **Horizontal Stepper**  
   The user can toggle to a horizontal layout where steps are shown in a row, and users navigate left to right.

3. **Form Fields**  
   The form contains basic fields such as name, email, password, and confirmation.

4. **Step Validation**  
   Each step validates its form fields before allowing the user to proceed to the next step.

## Customization

- **Form Fields**: Add or customize form fields within each step.
- **Stepper Layout**: Adjust between `StepperType.vertical` and `StepperType.horizontal` based on the desired layout.

---

This documentation provides a clear guide on implementing a **Registration Form** using vertical and horizontal steppers in Flutter. Feel free to modify it according to your project needs!

### Screenshots 📷


<div align="left">
   
<img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.9/vertical/snap1.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.9/vertical/snap2.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.9/vertical/snap3.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.9/vertical/snap4.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp;

<img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.9/horizontal/snap1.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.9/horizontal/snap2.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp; <img src= "https://github.com/Zimil-Patel/advance_flutter_ch1/blob/master/snaps/1.9/horizontal/snap3.png" height = 590 width = 300> &nbsp;&nbsp;&nbsp;&nbsp;
   
</div>

### Video Preview 🎥


https://github.com/user-attachments/assets/ab94e381-0ca1-455e-88d6-d24ef7569c75

















