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



