# Firebase Chat Application

This is a Chat App built on Flutter with the help of Firebase.
New users can create their accounts whose details will be stored and authenticated using Firebase Authentication.
Returning users can login using their email and password which will be authenticated by Firebase Authentication.
Users must provide their email, password and profile image in order to sign up, the image is stored in Storage while the user information and image link is stored in the Cloud Firestore. 
We create a custom theme for the app. 
Each user can login and send messages which will be stored in the Cloud Firestore along with their createdAt time and UID to ensure the messages are shown in the correct order. We also use Firebase Messaging in order to send push notifications.
We can improve this app to send push notifications for each text message using Firebase functions to create a smooth and classy UI for the user.
