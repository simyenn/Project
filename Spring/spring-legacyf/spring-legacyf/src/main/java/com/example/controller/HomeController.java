package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;

import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

//import java.text.DateFormat;
//import java.util.Date;
//import java.util.Locale;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.Mapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
   
   @GetMapping(value = {"/", "/index"})
   public String home() {
     // GET 요청 
      // http://localhost:8090/
      System.out.println("home() 호출됨...");
      
      
      return "index";// 실행할 jsp뷰 이름을 리턴함.
   }
   
   @GetMapping("/display")
   public ResponseEntity<byte[]> getImageFile(String fileName) throws IOException {
      System.out.println("filename : " + fileName);
      
      File file = new File("C:\\sye\\upload", fileName);
      System.out.println("실제 이미지 파일경로 : " + file.getPath());
      
      HttpHeaders headers = new HttpHeaders();
      
      String contentType = Files.probeContentType(file.toPath());      
      headers.add("Content-Type", contentType); //"image/jpeg" "image/png"
      
      byte[] imageData = FileCopyUtils.copyToByteArray(file);
            
      ResponseEntity<byte[]> responseEntity = new ResponseEntity<byte[]>(imageData, headers, HttpStatus.OK);
      return responseEntity;
   }
   
   @GetMapping(value = "/download", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
   @ResponseBody
   public ResponseEntity<Resource> downloadFile(String fileName) throws UnsupportedEncodingException {
	   System.out.println("fileName : " + fileName);
	   
	   File file = new File("C:\\sye\\upload", fileName);
	   
	   Resource resource = new FileSystemResource(file);
	   System.out.println("resource : " + resource);
	   
	   if (resource.exists() == false) { //다운로드할 파일이 존재하지 않으면
		   return new ResponseEntity<Resource>(HttpStatus.NOT_FOUND); //자원 없음 응답코드로 응답보내고 종료
	   }
	   //다운로드할 파일이 존재하면
	   String resourceName = resource.getFilename();
	   System.out.println("resourceName : " + resourceName);
	   
	   
	   int beginIndex = fileName.indexOf("_") + 1;
	   String originFilename = fileName.substring(beginIndex); //순수 파일명 구하기
	   System.out.println("originFilename : " + originFilename);
	   
	   String downloadFilename = new String(resourceName.getBytes("UTF-8"), "ISO-8859-1"); //다운로드 파일명으로 변환하기
	   
	   
	   HttpHeaders headers = new HttpHeaders();
	   //headers.add("Content-Disposition", "attachment; filename=" + downloadFilename);
	   headers.add("Content-Disposition", "attachment; filename=" + downloadFilename); //다운로드 파일명을 헤더에 설정하기
	   
	   return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);
   }
   
   
}