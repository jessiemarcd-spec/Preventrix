<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login | GameSite</title>
  <script type="module">
    import { initializeApp } from "https://www.gstatic.com/firebasejs/11.0.0/firebase-app.js";
    import { getAuth, signInWithEmailAndPassword, createUserWithEmailAndPassword } 
      from "https://www.gstatic.com/firebasejs/11.0.0/firebase-auth.js";

    const firebaseConfig = {
      apiKey: "YOUR_API_KEY",
      authDomain: "YOUR_PROJECT_ID.firebaseapp.com",
      projectId: "YOUR_PROJECT_ID",
    };

    const app = initializeApp(firebaseConfig);
    const auth = getAuth(app);

    const signup = document.getElementById("signupBtn");
    const login = document.getElementById("loginBtn");

    signup.addEventListener("click", async () => {
      const email = document.getElementById("email").value;
      const password = document.getElementById("password").value;
      try {
        await createUserWithEmailAndPassword(auth, email, password);
        alert("Account created successfully!");
      } catch (error) {
        alert(error.message);
      }
    });

    login.addEventListener("click", async () => {
      const email = document.getElementById("email").value;
      const password = document.getElementById("password").value;
      try {
        await signInWithEmailAndPassword(auth, email, password);
        alert("Login successful!");
        // TODO: redirect to game page
      } catch (error) {
        alert(error.message);
      }
    });
  </script>
</head>
<body>
  <h2>Login to GameSite</h2>
  <input id="email" type="email" placeholder="Email"><br>
  <input id="password" type="password" placeholder="Password"><br>
  <button id="loginBtn">Login</button>
  <button id="signupBtn">Sign Up</button>
</body>
</html>
