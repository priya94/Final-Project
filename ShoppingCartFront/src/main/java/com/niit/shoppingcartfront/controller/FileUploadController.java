package com.niit.shoppingcartfront.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * Handles requests for the application file upload requests
 */
@Controller
public class FileUploadController {

	private static final Logger logger = LoggerFactory
			.getLogger(FileUploadController.class);

	/**
	 * Upload single file using Spring Controller
	 */
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public @ResponseBody
	String uploadFileHandler(
			@RequestParam("file") MultipartFile file) {
		System.out.println("file upload");
		String name = file.getOriginalFilename();
		String path="E:\\upld\\bagimg";

		if (!file.isEmpty()) {
			try {
				
				System.out.println("is file empty");
				

				// Creating the directory to store file
				
				File dir = new File(path);
				if (!dir.exists())
					dir.mkdirs();
				byte[] bytes = file.getBytes();

				// Create the file on server
			
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(new File(path+"\\"+name)));
				stream.write(bytes);
				stream.close();

				logger.info("File Location="
						+ dir.getAbsolutePath());

				return "You successfully uploaded " + name + " into " + name + "-uploaded !";
			} catch (Exception e) {
				return "You failed to upload " + name + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + name
					+ " because the file was empty.";
		}
	}

	/**
	 * Upload multiple file using Spring Controller
	 */
	@RequestMapping(value = "/uploadMultipleFile", method = RequestMethod.POST)
	public @ResponseBody
	String uploadMultipleFileHandler(@RequestParam("name") String[] names,
			@RequestParam("file") MultipartFile[] files) {
		System.out.println("upload picture");

		if (files.length != names.length)
			return "Mandatory information missing";

		String message = "";
		for (int i = 0; i < files.length; i++) {
			System.out.println("loop");
			MultipartFile file = files[i];
			String name = names[i];
			try {
				System.out.println("file upload try inside loop");
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();
				System.out.println("file upld if dir exists");
				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				logger.info("Server File Location="
						+ serverFile.getAbsolutePath());

				message = message + "You successfully uploaded file=" + name
						+ "<br />";
			} catch (Exception e) {
				return "You failed to upload " + name + " => " + e.getMessage();
			}
		}
		return message;
	}
}

