package javaspring.Laptopshop.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;
@Service
public class UploadService {
    private final ServletContext servletContext;

    public UploadService(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    public String handleUpLoadFile(MultipartFile file, String targetFolder) throws IOException {
        if (file.isEmpty()) {
            return "";
        }

        String rootPath = this.servletContext.getRealPath("/resources/images");
        byte[] bytes = file.getBytes();

        String fileName = "";

        File dir = new File(rootPath + File.separator + targetFolder);

        if (!dir.exists()) {
            dir.mkdirs();
        }

        fileName = System.currentTimeMillis() + "-" + file.getOriginalFilename();

        File serverFile = new File(dir.getAbsolutePath() + File.separator + fileName);
        BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
        stream.write(bytes);
        stream.close();

        return fileName;
    }
}
