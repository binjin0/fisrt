<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");

String filename="";
String realFolder="C:\\upload";
String encType = "utf-8";
int maxSize=5*1024*1024;
DefaultFileRenamePolicy policy=new DefaultFileRenamePolicy();
MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, 
policy);

String productId=multi.getParameter("productId");
String name=multi.getParameter("name");
String unitPrice=multi.getParameter("unitPrice");
String category=multi.getParameter("category");
String description=multi.getParameter("description");
String unitsInStock=multi.getParameter("unitsInStock");
String Material=multi.getParameter("Material");
String grade=multi.getParameter("grade");



Integer price;
if(unitPrice.isEmpty())
	price=0;
else
	price=Integer.valueOf(unitPrice);

long stock;

if(unitsInStock.isEmpty())
	stock=0;
else
	stock=Long.valueOf(unitsInStock);

Enumeration<?> files=multi.getFileNames();
String fname=(String) files.nextElement();
String fileName=multi.getFilesystemName(fname);

ProductRepository dao=ProductRepository.getInstance();

Product newProduct=new Product();
newProduct.setProductId(productId);
newProduct.setPname(name);
newProduct.setUnitPrice(price);
newProduct.setCategory(category);
newProduct.setDescription(description);
newProduct.setUnitsInStock(stock);
newProduct.setMaterial(Material);
newProduct.setGrade(grade);
newProduct.setFilename(fileName);


dao.addProduct(newProduct);
response.sendRedirect("products.jsp");


%>

</body>
</html>