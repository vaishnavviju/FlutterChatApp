# Firebase Chat Application

This is a Chat App built on Flutter with the help of Firebase.
New users can create their accounts whose details will be stored and authenticated using Firebase Authentication.
Returning users can login using their email and password which will be authenticated by Firebase Authentication.
Users must provide their email, password and profile image(obtained by using the native Camera feature) in order to sign up, the image is stored in Storage while the user information and image link is stored in the Cloud Firestore. 

We create a custom theme for the app. 
Each user can login and send messages which will be stored in the Cloud Firestore along with their createdAt time and UID to ensure the messages are shown in the correct order. We also use Firebase Messaging in order to send push notifications.
We can improve this app to send push notifications for each text message using Firebase functions to create a smooth and classy UI for the user.

![image](https://github.com/vaishnavviju/FlutterChatApp/assets/95471125/315cdcaa-90de-47ba-a9d2-a05ff07a1f92)

![image](https://github.com/vaishnavviju/FlutterChatApp/assets/95471125/5bc40090-b7f9-4908-8652-c3d3003b6d2f)

![image](https://github.com/vaishnavviju/FlutterChatApp/assets/95471125/8b4c2c0e-5c1b-44da-af78-8d7dd8c3778a)

![image](https://github.com/vaishnavviju/FlutterChatApp/assets/95471125/60e45b38-1b0c-45d2-842d-d4af864c2c02)
