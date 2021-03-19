function login_to_site(username, password) {
    console.log(username);
    
    if (username == "demo" && password == "mode") {
        window.location = "welcome.html";
    } else {
        window.location = "error.html";
    }
}