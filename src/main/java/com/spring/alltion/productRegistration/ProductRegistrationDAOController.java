package com.spring.alltion.productRegistration;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.PrintWriter;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
public class ProductRegistrationDAOController {
	
	@RequestMapping(value = "imgUpload.yb", produces="application/json;charset=UTF-8")
	public void profileUpload(MultipartFile file, HttpServletResponse response) throws Exception {
		// 출력값 셋팅
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// 업로드할 폴더 경로
		// Servers 폴더의 server.xml <host>태그 안에 아래 문구 삽입(하단쪽)
		// <Context docBase="C:\AlltionUpload"  path="alltion/AlltionUpload" reloadable="true"/>
		// 실제 폴더도 직접 생성해주자
		String realFolder = "C:\\AlltionUpload";
		UUID uuid = UUID.randomUUID();

		// 업로드할 파일 이름
		String originalFilename = file.getOriginalFilename();
		String savedFilename = uuid.toString() + originalFilename;
		
		// 확장자 유효성 검사
		String extension = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
		if(!(extension.equals("jpg"))) {
			out.println(0);
			out.close();
		} else {
			// 이미지 가로폭 할당
			Image image = ImageIO.read(file.getInputStream());
			int imageWidth = image.getWidth(null);
			
			
			// 원본 이미지 경로 + 파일명
			String filepath = realFolder + "\\" + savedFilename;
			
			// 파일 저장
			File f = new File(filepath);
			if (!f.exists()) {
				f.mkdirs();
			}
			file.transferTo(f);
			
			// 이미지 가로폭 유효성 검사
			if (imageWidth > 1000) {
				savedFilename = ImageResize(filepath, image, savedFilename);
			}
			
			// 에디터에 이미지 경로 출력
			out.println("/alltion/AlltionUpload/" + savedFilename);
			out.close();
		}
	}
	
	public String ImageResize(String filepath, Image image, String savedFilename) {
		// resize 경로  + 파일명
        String resizeSavedFilename = 
        		new StringBuffer(filepath).insert(filepath.lastIndexOf("."), "_resize").toString();
        int width = 1000; // 넓이 기준
        
        int imageWidth; // 원본 이미지 가로
        int imageHeight; // 원본 이미지 세로
        double ratio; // 이미지 축소 비율
        int newWidth; // resize 된 가로
        int newHeight; // resize 된 세로
 
        try{
            // 원본 이미지 사이즈 가져오기
            imageWidth = image.getWidth(null);
            imageHeight = image.getHeight(null);
            
            // 넓이 기준 비율로 이미지 사이즈 조절
            ratio = (double)width/(double)imageWidth;
	        newWidth = (int)(imageWidth * ratio);
	        newHeight = (int)(imageHeight * ratio);
 
            // 이미지 리사이즈
            // Image.SCALE_DEFAULT : 기본 이미지 스케일링 알고리즘 사용
            // Image.SCALE_FAST    : 이미지 부드러움보다 속도 우선
            // Image.SCALE_REPLICATE : ReplicateScaleFilter 클래스로 구체화 된 이미지 크기 조절 알고리즘
            // Image.SCALE_SMOOTH  : 속도보다 이미지 부드러움을 우선
            // Image.SCALE_AREA_AVERAGING  : 평균 알고리즘 사용
            Image resizeImage = image.getScaledInstance(newWidth, newHeight, Image.SCALE_SMOOTH);
 
            // 새 이미지  저장하기
            BufferedImage newImage = new BufferedImage(newWidth, newHeight, BufferedImage.TYPE_INT_RGB);
            Graphics g = newImage.getGraphics();
            g.drawImage(resizeImage, 0, 0, null);
            g.dispose();
            ImageIO.write(newImage, "jpg", new File(resizeSavedFilename));
            
        } catch (Exception e){
            e.printStackTrace();
        }
        
        // resize 파일명 리턴
        String newSavedFilename = new StringBuffer(savedFilename).insert(savedFilename.lastIndexOf("."), "_resize").toString();
		return newSavedFilename;
    }
	
//	@RequestMapping(value = "imgUpload.yb", produces="application/json;charset=UTF-8")
//	public void profileUpload(MultipartFile file, HttpServletResponse response) throws Exception {
//		ImageIO.scanForPlugins();
//		// 출력값 셋팅
//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		
//		// 업로드할 폴더 경로
//		// Servers 폴더의 server.xml <host>태그 안에 아래 문구 삽입(하단쪽)
//		// <Context docBase="C:\AlltionUpload"  path="alltion/AlltionUpload" reloadable="true"/>
//		// 실제 폴더도 직접 생성해주자
//		String realFolder = "C:\\AlltionUpload";
//		UUID uuid = UUID.randomUUID();
//
//		// 업로드할 파일 이름
//		String originalFilename = file.getOriginalFilename();
//		System.out.println(originalFilename);
//		String savedFilename = uuid.toString() + originalFilename;
//		
//		// 확장자 유효성 검사
//		String extension = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
//		if(!(extension.equals("jpg"))) {
//			out.println(0);
//			out.close();
//		} else {
//			// 이미지 가로폭 할당
//			BufferedImage image = ImageIO.read(file.getInputStream());
//			int imageWidth = image.getWidth();
//			
//			
//			// 원본 이미지 경로 + 파일명
//			String filepath = realFolder + "\\" + savedFilename;
//			
//			// 파일 저장
//			File f = new File(filepath);
//			if (!f.exists()) {
//				f.mkdirs();
//			}
//			file.transferTo(f);
//			
//			// 이미지 가로폭 유효성 검사
//			if (imageWidth > 1000) {
//				savedFilename = ImageResize(filepath, extension, savedFilename);
//			}
//			
//			// 에디터에 이미지 경로 출력
//			out.println("/alltion/AlltionUpload/" + savedFilename);
//			out.close();
//		}
//	}
//	
//	public String ImageResize(String filepath, String extension, String savedFilename) {
//		// resize 경로  + 파일명
//        String resizeSavedFilename = 
//        		new StringBuffer(filepath).insert(filepath.lastIndexOf("."), "_resize").toString();
//        int width = 1000; // 넓이 기준
//        
//        Image image; // 읽어올 이미지
//        int imageWidth; // 원본 이미지 가로
//        int imageHeight; // 원본 이미지 세로
//        double ratio; // 이미지 축소 비율
//        int newWidth; // resize 된 가로
//        int newHeight; // resize 된 세로
// 
//        try{
//            // 원본 이미지 가져오기
//            image = ImageIO.read(new File(filepath));
// 
//            // 원본 이미지 사이즈 가져오기
//            imageWidth = image.getWidth(null);
//            imageHeight = image.getHeight(null);
//            
//            // 넓이 기준 비율로 이미지 사이즈 조절
//            ratio = (double)width/(double)imageWidth;
//	        newWidth = (int)(imageWidth * ratio);
//	        newHeight = (int)(imageHeight * ratio);
// 
//            // 이미지 리사이즈
//            // Image.SCALE_DEFAULT : 기본 이미지 스케일링 알고리즘 사용
//            // Image.SCALE_FAST    : 이미지 부드러움보다 속도 우선
//            // Image.SCALE_REPLICATE : ReplicateScaleFilter 클래스로 구체화 된 이미지 크기 조절 알고리즘
//            // Image.SCALE_SMOOTH  : 속도보다 이미지 부드러움을 우선
//            // Image.SCALE_AREA_AVERAGING  : 평균 알고리즘 사용
//            Image resizeImage = image.getScaledInstance(newWidth, newHeight, Image.SCALE_SMOOTH);
// 
//            // 새 이미지  저장하기
//            BufferedImage newImage = new BufferedImage(newWidth, newHeight, BufferedImage.TYPE_INT_RGB);
//            Graphics g = newImage.getGraphics();
//            g.drawImage(resizeImage, 0, 0, null);
//            g.dispose();
//            ImageIO.write(newImage, extension, new File(resizeSavedFilename));
//            
//        } catch (Exception e){
//            e.printStackTrace();
//        }
//        
//        // resize 파일명 리턴
//        String newSavedFilename = new StringBuffer(savedFilename).insert(savedFilename.lastIndexOf("."), "_resize").toString();
//		return newSavedFilename;
//    }
	
}