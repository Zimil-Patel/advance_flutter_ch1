# Advance Flutter Chapter 3


## ✔️ 3.1 connectivity_plus [📂 (source)](https://github.com/Zimil-Patel/advance_flutter_ch1/tree/master/lib/switch%20theme)

### 1.1 Switch Dark Theme to Light Theme

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

