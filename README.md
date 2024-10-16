OptiStyle - Eyewear App
OptiStyle is a mobile application focused on providing users with a seamless experience for browsing, managing, and purchasing eyeglasses. The app integrates Firebase for authentication and state management using GetX to maintain a responsive and efficient user interface.

Features
User Authentication: Secure login and registration using Firebase Authentication. Google Sign-In is also supported for easy access.
Shopping Cart: Allows users to add, update, and manage eyeglasses in their cart.
Wishlist: A feature where users can add their favorite items to easily access them later.
Profile Management: Displays user information with options to view orders, wishlist, app details, and sign out.
About OptiStyle: Contains detailed information about the brand and contact options.
Smooth Navigation: Implemented using GetX for clean and fast navigation between screens.

--> Project Structure <--

lib/
│
├── main.dart                      # Entry point of the application
├── SignIn.dart                     # Handles user sign-in and Google sign-in flow
├── SignUp.dart                     # User registration screen
├── HomePage.dart                   # Main screen after user logs in
├── Profile.dart                    # User profile page
├── Cart.dart                       # Shopping cart management
├── Favorite.dart                   # Wishlist management
├── CallUs.dart                     # Information about OptiStyle and contact
├── helpers/
│   └── auth_helper.dart            # Helper functions for Firebase Authentication
├── models/
│   └── product.dart                # Product model for eyeglasses
└── widgets/
    └── reusable_widgets.dart       # Reusable widgets like buttons and forms
    
Screens
1. Sign In & Sign Up (SignIn.dart & SignUp.dart)
SignIn Page: Users can log in with their email and password or via Google Sign-In. Firebase Authentication is used to verify credentials.
SignUp Page: New users can create an account by providing their name, email, and password. A verification email is sent upon registration.
2. Home Page (HomePage.dart)
The central hub of the app, displaying eyeglasses and allowing users to explore products. Users can add items to their cart or wishlist from this screen. It includes:

Eyeglasses List: A scrollable list of products.
Cart Icon: Always visible in the AppBar to provide quick access to the cart.
3. Profile (Profile.dart)
The user's profile page where they can:

View their name and email.
Access My Orders, My Wishlist, and About OptiStyle.
Sign out securely using Firebase's signOut() method.
4. Cart (Cart.dart)
Allows users to view and manage the items they've added to their cart, with the ability to:

Remove items.
Proceed to checkout (functionality can be expanded).
View the total cost of selected items.
5. Wishlist (Favorite.dart)
A dedicated page for users to view their favorite eyeglasses. Items can be added to the cart or removed from the wishlist.

6. About OptiStyle (CallUs.dart)
A simple informational page that provides details about OptiStyle and offers ways to contact customer support.

Dependencies
This project uses a variety of packages to handle functionality like authentication, state management, and fonts:

Firebase Authentication: Handles user sign-in, sign-up, and session management.
Google Sign-In: Allows users to authenticate using their Google account.
GetX: A lightweight and powerful state management and navigation tool.
Google Fonts: Provides beautiful, customizable fonts for a modern UI.
