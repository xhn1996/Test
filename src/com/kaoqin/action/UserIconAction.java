package com.kaoqin.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.Base64;

import com.opensymphony.xwork2.ActionSupport;

public class UserIconAction extends ActionSupport {
	private String dataURL;

	@Override
	public String execute() throws Exception {
	
		decodeBase64DataURLToImage(dataURL,"D:\\userIco","aa.png");
		
		return NONE;
	}

	public static void decodeBase64DataURLToImage(String dataURL, String path, String imgName) throws IOException {
		// 将dataURL开头的非base64字符删除
		String base64 = dataURL.substring(dataURL.indexOf(",") + 1);
		System.out.println(new File(path));
		FileOutputStream write = new FileOutputStream(new File(new File(path) , imgName));
		byte[] decoderBytes = Base64.getDecoder().decode(base64);
		write.write(decoderBytes);
		System.out.println("完成");
		write.close();
	}

	public String getDataURL() {
		return dataURL;
	}

	public void setDataURL(String dataURL) {
		this.dataURL = dataURL;
	}

}
