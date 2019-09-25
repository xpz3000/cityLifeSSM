<%@ page language="java"
contentType="application/x-msdownload; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>
<%
	response.reset();
	response.setContentType("application/x-download");
		String realPath = application.getRealPath("pages");
		String fileName = "test.txt";
	fileName = URLEncoder.encode(fileName, "UTF-8");
	response.addHeader("Content-Disposition", "attachment;filename="+ fileName);
		FileInputStream fis = null;
		OutputStream os = null;
			try {
				fis = new FileInputStream(realPath + "/" + fileName);
				os = response.getOutputStream();
				byte[] bbuf = new byte[1024];
				int hasRead = 0;
				while ((hasRead = fis.read(bbuf)) > 0) {
				os.write(bbuf, 0, hasRead);
				}
		os.flush();
		out.clear();
		out = pageContext.pushBody();
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					if (fis != null) {
						fis.close();
				}
			}
		%>
