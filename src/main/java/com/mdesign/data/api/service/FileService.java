package com.mdesign.data.api.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

@Service
public class FileService {

    @Value("${upload.folder}")
    String folderToUpload;

    public void uploadToFileSystem(MultipartFile file,
                                   String folderName,
                                   String fileName)
            throws IOException {

        Path storageDirectory = Paths.get(folderToUpload + "\\" + folderName);

        if (!Files.exists(storageDirectory)) {
            Files.createDirectories(storageDirectory);
        }

        Path destination = Paths.get(folderToUpload + "\\" + folderName + "\\" + fileName);

        Files.copy(file.getInputStream(), destination, StandardCopyOption.REPLACE_EXISTING);
    }


}
