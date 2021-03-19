function login_to_site(username, password) {
    console.log(username);
    
    if (username == "demo" && password == "mode") {
        window.location = "welcome-v2.html";
    } else {
        window.location = "error-v2.html";
    }
}