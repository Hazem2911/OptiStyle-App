OptiStyle - Eyewear Shopping App
OptiStyle is a mobile application designed to provide users with an easy and enjoyable experience for browsing, managing, and purchasing eyeglasses. The app uses Firebase Authentication for secure login and state management via GetX, offering a smooth and efficient user interface.

Features
- User Authentication: Secure login and registration using Firebase Authentication, with support for Google Sign-In.
- Shopping Cart: Allows users to add, update, and manage eyeglasses in their cart.
- Wishlist: Users can save their favorite items for later access.
- Profile Management: Displays user information, including options to view orders, wishlist, app details, and sign out.
- About OptiStyle: Provides detailed information about the brand, with contact options.
- Smooth Navigation: Efficient page navigation implemented using GetX.

Screens
- 1. Sign In & Sign Up
SignIn Page: Users can log in using their email and password, or authenticate with Google via Firebase.
SignUp Page: New users can register by providing their name, email, and password. A verification email is sent upon successful registration.

- 2. Home Page
The Home Page displays a scrollable list of eyeglasses, allowing users to browse and add products to their cart or wishlist. A cart icon in the AppBar provides quick access to the shopping cart.

- 3. Profile Page
The Profile Page shows the user’s name and email, with options to:

--View My Orders
--Access My Wishlist
--Learn more About OptiStyle
--Sign Out securely via Firebase's sign-out method.

-4. Cart Page
Users can manage the items they've added to their cart. The Cart page allows users to:

--Remove items from the cart.
--Proceed to checkout (functionality can be expanded).
--View the total cost of their items.

- 5. Wishlist Page
The Wishlist page lets users view and manage their favorite products. Users can easily add items to the cart or remove them from the wishlist.

- 6. About OptiStyle
The CallUs page provides detailed information about OptiStyle, including ways to contact customer support for inquiries.

Dependencies
This project uses several Flutter packages to handle various features:

--Firebase Authentication: Manages user sign-in, sign-up, and session tracking.
--Google Sign-In: Allows users to authenticate using their Google account.
--GetX: State management and navigation tool for efficient page transitions and data handling.
--Google Fonts: Custom fonts for creating a modern UI.
