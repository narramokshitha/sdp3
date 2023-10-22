package com.example.socialmedia;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Rest {
	@Autowired
    private UserDAO dao;
	
	@GetMapping("/login")
	public String login()
	{
		return "login";
	}
	@GetMapping("/success")
	public String success() {
		return "success";	
	}
	@GetMapping("/forgotpw")
	public String forgotpw()
	{
		return "forgotpw";
	}
	@GetMapping("/signup")
	public String signup()
	{
		return "signup";
	}
	@GetMapping("/home")
	public String home()
	{
		return "home";
	}
	@GetMapping("/profile")
	public String profile()
	{
		return "profile";
	}
	@GetMapping("/message")
	public String message()
	{
		return "message";
	}
	@GetMapping("/explore")
	public String explore()
	{
		return "explore";
	}

    @PostMapping("/signupAction")
    public String processSignUp(@RequestParam String username, @RequestParam String fullname, @RequestParam String password, @RequestParam String confirmpass) {
        User u = new User(username, fullname, password, confirmpass);
        dao.save(u);
        return "redirect:/login"; // Redirect to the login page
    }

    @PostMapping("/loginAction")
    public String processLogin(@RequestParam String username, @RequestParam String password, Model model) {
        User user = dao.findByUsername(username);

        if (user != null && user.getPassword().equals(password)) {
            return "redirect:/home"; // Redirect to the home page
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login"; // Stay on the login page with an error message
        }
    }
    @GetMapping("/blogging")
	public String blogging()
	{
		return "blogging";
	}    
    @GetMapping("/mentalhealth")
	public String mentalhealth()
	{
		return "mentalhealth";
	}
}
