package com.grownited.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

@Controller
public class UserController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	MailService mailService;
	
	@Autowired
	PasswordEncoder encoder;
	
	@Autowired
	Cloudinary cloudinary;
	
	
	
	
	@PostMapping("saveuser")
	public String saveuser(UserEntity userEntity,MultipartFile profilePic) {
		
		System.out.println(userEntity.getFirstName());
		System.out.println(userEntity.getLastName());
		System.out.println(userEntity.getEmail());
		System.out.println(userEntity.getPassword());
		System.out.println(userEntity.getGender());
		System.out.println(userEntity.getDateOfBirth());
		System.out.println(userEntity.getContactNum());
		
		System.out.println(profilePic.getOriginalFilename());
		
		try {
			Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
			System.out.println(result);
			System.out.println(result.get("url"));
			userEntity.setProfilePicPath(result.get("url").toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		userEntity.setRole("USER");
		userEntity.setActive(true);
		userEntity.setCreatedAt(LocalDate.now().toString());
		
		String encPassword = encoder.encode(userEntity.getPassword());
		userEntity.setPassword(encPassword);
		
		userRepository.save(userEntity);
		
		// send mail
		mailService.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
		
		return "redirect:/login";
	}
	
	
	@GetMapping("listuser")
	public String listuser(Model model) {
		
		List<UserEntity> userList = userRepository.findAll();
		
		model.addAttribute("userList", userList);
		
		return "ListUser";
	}
	
	@GetMapping("viewuser")
	public String viewuser(Integer userId,Model model) {
		
		System.out.println("User ID : "+userId);
		
		Optional<UserEntity> op = userRepository.findById(userId);
		
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			 UserEntity user = op.get();
			// send data to jsp ->
			model.addAttribute("user", user);

		}
		
		return "ViewUser";
	}
	
	
	
	

	@GetMapping("edituser")
	public String edituser(Integer userId,Model model) {
		Optional<UserEntity> op = userRepository.findById(userId);
		
		
		if (op.isEmpty()) {
			return "redirect:/listuser";
		} else {
			
			
			model.addAttribute("user",op.get());
			return "EditUser";

		}
	}
	//save -> entity -> no id present -> insert 
	//save -> entity -> id present -> not present in db -> insert 
	//save -> entity -> id present -> present in db -> update  

	@PostMapping("updateuser")
	public String updateuser(UserEntity userEntity,MultipartFile profilePic) {
		
		System.out.println("userEntity.getUserId() ====>"+userEntity.getUserId());//id? db? 
		System.out.println("Picture ===>"+profilePic);
		Optional<UserEntity> op = userRepository.findById(userEntity.getUserId());
		
		if(op.isPresent())
		{
			UserEntity dbUser = op.get(); 
			dbUser.setFirstName(userEntity.getFirstName());
			dbUser.setLastName(userEntity.getLastName());
			dbUser.setGender(userEntity.getGender());
			dbUser.setEmail(userEntity.getEmail());
			dbUser.setContactNum(userEntity.getContactNum());
			dbUser.setCity(userEntity.getCity());
			dbUser.setState(userEntity.getState());
			dbUser.setDateOfBirth(userEntity.getDateOfBirth());
			
			
//			if(profilePic != null) {
//					try {
//							Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
//								System.out.println(result);
//								System.out.println(result.get("url"));
//								dbUser.setProfilePicPath(result.get("url").toString());
//					} catch (IOException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
//			}		
			
			userRepository.save(dbUser);
		}
		return "redirect:/listuser";
	}
	
	
	
	
	
	
	@GetMapping("deleteuser")
	public String deleteuser(Integer userId) {
		
		userRepository.deleteById(userId);
		
		System.out.println("User successfully deleted!");
		
		return "redirect:/listuser";
	}
}
