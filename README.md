# Counter, SwiftUI/UIKit App.
### Reusing Code with Adapter Pattern and Liskov Substitution Principle

![](App%20Screenshots/appScreenshots.jpg)

The App has two targets "Counter MVC" and "Counter SwiftUI" showcasing how using Adapter design pattern and Liskov Substitution Principle we can reuse old code to our new SwiftUI view.

If you run each of the targets, the app will look exactly the same however under-the-hood implementation is conforming to either MVC or Clean Swift design pattern.

Clean Swift implementation navigates from landing screen into two screens, first one is UIKit implementation of the counter App and second is SwiftUI implementation of the same app with shared business and presentation logic.

### Data flow of UIKit Clean Swift implementation
VIP cycle
![](App%20Screenshots/cleanSwiftUIKit.PNG)

### Data flow of SwiftUI Clean Swift implementation
VIP cycle with Adapter Layer
![](App%20Screenshots/cleanSwiftSwiftUI.PNG)

When any business or presentation logic is changed it will reflect in both implementations.

### MEDIUM ARTICLE
I have written a Medium article with a few more details on how this was implemented. 
