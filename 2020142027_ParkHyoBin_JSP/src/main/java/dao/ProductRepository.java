package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts=new ArrayList<Product>();
	private static ProductRepository instance=new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	public ProductRepository() {
		Product Necklace1=new Product("N1234","14K 골드 비비안원석 금목걸이", 120000);
		Necklace1.setCategory("목걸이");
		Necklace1.setDescription("고급스러운 쉐입의 14k gold 큐빅 목걸이 입니다~!!"
				+ "               세련된 무드를 연출하고 어디서도 본 적없는 특별한 디자인으로 보여드립니다.");
		Necklace1.setUnitsInStock(1000);
		Necklace1.setMaterial("14K");
		Necklace1.setGrade("4.8");
		Necklace1.setFilename("1234.png");
		
		Product Necklace2=new Product("R1235","14K 골드 하프 스탬프 원터치 링 귀걸이",42300);
		Necklace2.setCategory("귀걸이");
		Necklace2.setDescription("귀여운 하트모양으로 뿅 뚫려있는 사랑스러운 14K gold 원터치 이어링 입니다~^^");
		Necklace2.setUnitsInStock(50);
		Necklace2.setMaterial("14K");
		Necklace2.setGrade("4.5"); 
		Necklace2.setFilename("1235.png");
		
		Product Earrings = new Product("R1236","925 실버 파스텔 통통하트 원석반지",30000);
		Earrings.setCategory("반지");
		Earrings.setDescription("어디서도 쉽게 보지못했던 유니크한 디자인과 컬러감이기도 해서 소장가치가 더욱 높답니다~^^");
		Earrings.setUnitsInStock(20);
		Earrings.setMaterial("실버925");
		Earrings.setGrade("5");
		Earrings.setFilename("1236.png");
		
		
		listOfProducts.add(Necklace1);
		listOfProducts.add(Necklace2);
		listOfProducts.add(Earrings);
		
	}
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	public Product getProductById(String productId) {
		Product productById=null;
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product=listOfProducts.get(i);
			if(product!=null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById=product;
				break; //if문이 true이면 break하고 반복문 빠져나가 return문 실행
			}
		}
		return productById;
	}
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}

}
