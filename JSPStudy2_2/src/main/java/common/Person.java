package common;

public class Person {
	private String name; //규약 1번 준수
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	//getter setter부분 -> 규약 4번 5번 준수
	private int age; //규약2번 준수
	//이름과 나이 멤버 변수를 private으로 선언. 
	public Person() {  //기본생성자 정의 규약3번 준수
		
	}

}
