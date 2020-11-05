package com.biz.team.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("fileServiceV1")
public class FileServiceImplV1 implements FileService{


	protected final String rootFolder;
	public FileServiceImplV1() {
		rootFolder = "C:/bizwork/workspace/upload/team";
	}
	
	@Override
	public String fileUp(MultipartFile file) {
		
		if(file == null) {
			return null;
		}
		
		File dir = new File(rootFolder);
		
		// file�쓣 upload�븷 �뤃�뜑瑜� 寃��궗�븯�뿬 �뾾�쑝硫� �깉濡� �깮�꽦�빐�떖�씪
		if(!dir.exists()) {
			// mkdir()�� �젣�씪�걹�쓽 �뤃�뜑 1媛쒕쭔 �깮�꽦
			// mkdirs() 紐⑤뱺 寃쎈줈�쓽 �뤃�뜑瑜� �븳爰쇰쾲�뿉 �깮�꽦
			dir.mkdirs();
		}
		
		String fileName = file.getOriginalFilename();
		
		// �꽌踰꾩쓽 ���옣�뤃�뜑 + �뙆�씪�씠由꾩쓣 �빀�꽦�븯�뿬 �뙆�씪 ���옣 以�鍮�
		File saveFile = new File(rootFolder,fileName);
		try {
			file.transferTo(saveFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// UUID媛� 遺�李⑸맂 �뙆�씪�씠由꾩쓣 controller濡�  return�븯�뿬 DB�뿉 ���옣�븯�뒗 �슜�룄濡�
		return fileName;
	}

	/*
	 * �뙆�씪�씠由꾩쓣 諛쏆븘�꽌 �뙆�씪�쓣 �궘�젣
	 */
	@Override
	public boolean fileDelete(String h_file) {
		
		boolean ret = false;
		File deleteFile = new File(rootFolder,h_file);
		if(deleteFile.exists()) {
			// �뙆�씪�쓣 �궘�젣�븯硫� true return
			ret = deleteFile.delete();
		}
		return ret;
	}

}
