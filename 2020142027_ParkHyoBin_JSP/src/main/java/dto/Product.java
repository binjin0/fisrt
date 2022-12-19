package dto; //기본 패키지 이용 안함 1번 규약 준수

import java.io.Serializable;

public class Product implements Serializable{
	//속성으 private로 선언. 규약2번 준수
	private static final long serialVersionUID = 5172686590827527119L;
	private String productId; //상품 아이디
	private String pname; //상품이름
	private Integer unitPrice;//상품가격
	private String category; //카테고리
	private String description;//상품설명
	private long unitsInStock;//재고수
	private String Material; //소재안내
	private String grade;//평점
	private String filename; //이미지 파일명
	
	
	public Product() {
		super();
	}
    //기본생성자 규약 3번 준수 
	public Product(String productId, String pname, Integer unitPrice) {
		super();
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}
	//게터/세터 ,접근지정자 public ->규약 4번5번 준수

	public String getProductId() {
		return productId;
	}

	
	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}
	
	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer uniPrice) {
		this.unitPrice = uniPrice;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
	public long getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	
	public String getMaterial() {
		return Material;
	}
	public void setMaterial(String material) {
		Material = material;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
		
	}
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}