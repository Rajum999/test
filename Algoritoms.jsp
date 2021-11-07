1.

public class ArmstrongNumber {

	public static void main(String[] args) {
		int num=153 ,rem=0, arm=0,num1=153;
		while(num>0) {
			rem=num%10;
			arm=arm+(rem*rem*rem);
			num=num/10;
		}
		System.out.println(arm);
		if(num1==arm) {
			System.out.println(arm+" is a armstrong number");
		}
		else {
			System.out.println(arm+" is not a armstrong number");
		}

	}

}


2.


public class ArmstrongNumbers {

	public static void main(String[] args) {
		
		for(int i=100;i<=999;i++) {
			int rem=0,arm=0,num=i;
			while(num>0) {
				rem=num%10;
				arm=arm+(rem*rem*rem);
				num=num/10;
			}
			if(i==arm)
			System.out.print(arm+" ");
		}

	}

}

3.
public class Result {

	public static void main(String[] args) {
		int sub1=1,sub2=70,sub3=51;
		if(sub1>60 && sub2>60 && sub3>60) {
			System.out.println("the student is passed");
		}
		else if((sub1>60 && sub2 >60) || (sub2>60 &&sub3>60) ||(sub1>60 &&sub3>60) ){ 
			System.out.println("the student is Promoted");
			
		}
		else if((sub1>60 || sub2>60 || sub3>60) || (sub1<60 && sub2<60 && sub3<60)) {
			System.out.println("the student is failed");
			
		}
	}

	
}


4.public class IncomeTax {

	public static void main(String[] args) {
		double tax=0;
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter your total earning");
		int sal = scanner.nextInt();
		if(sal>0 && sal<180000) {
			System.out.println("There is no tax pay for this amount");
		}
		else if(sal >= 180001 && sal <= 300000){
			tax= ((sal-180000)*0.1);
			System.out.println("The payable tax is "+tax);
		}
		else if(sal >=300001 && sal <= 500000) {
			tax= ((sal-180000)*0.2);
			System.out.println("The payable tax is "+tax);
		}
		else if(sal >= 500001 && sal <= 1000000) {
			tax= ((sal-180000)*0.3);
			System.out.println("The payable tax is "+tax);
		}

	}

}


5.import java.util.Scanner;

public class Search {

	public static void main(String[] args) {
		int count=0;
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter the number");
		int num = scanner.nextInt();
		System.out.println("enter the size of array");
		int size = scanner.nextInt();
		int[] array = new int[size];
		for(int i=0;i<=array.length-1;i++) {
			System.out.println("enter the "+ (i+1 )+ "th element in array");
			array[i]=scanner.nextInt();
		}
		for(int i=0;i<=array.length-1;i++) {
			if(num==array[i]) {
				count++;
			}
		}
			if(count==1) {
				System.out.println("the given element is present in the array");
			}
			else {
				System.out.println("there is no such element");
			}
		
		

	}

}

6.public class SimpleIntrest {

	public static void main(String[] args) {
		
		simpleInt();
		coumpoundInt();
		// p=given amount, t=total number of years, pA,tA=temp variables
		//r= rate of interest 
	}

	private static void coumpoundInt() {
		int p=8000, t=3,pA=0, tA=0;
		double r =0.05;
		for(int i=1 ;i<=t;i++) {
			pA=(int) ((pA+p)*r);
			tA=tA+pA;
		}
		System.out.println("the compound intrest for "+ p + " is " + tA);
		
	}

	public static void simpleInt() {
		int p = 100000, t = 3, pA = 0, tA = 0;
		double r = 0.1;
		for (int i = 1; i <= t; i++) {
			pA = (int) (p * r);
			tA = tA + pA;
		}
		System.out.println("simple intrest for "+ p +" is "+ tA);
		
	}

}

7.


import java.util.Scanner;

public class Valid {
	static int count = 0;

	public static void main(String[] args) {

		credentials();

	}

	public static void credentials() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter your user id");
		String userID = scanner.next();
		System.out.println("Enter your Password");
		String password = scanner.next();
		login(userID, password);

	}

	public static void login(String userID, String password) {
		String userId = "Nireekshan";
		String password1 = "123456";
		if (userId.equals(userID) && password1.equals(password)) {
			System.out.println(userID + " your login is successful");
		} else {
			count++;
			if (count < 3) {
				credentials();
			} else {
				System.out.println("contact your Admin");
			}

		}

	}

}

8.public class BubbleSort {

	public static void main(String[] args) {
		int[] x = {5,12,14,6,78,19,1,23,26,35,37,7,52,86,47};
		int temp;
		for(int i=0;i<x.length-1;i++) {
			for(int j=0;j<x.length-1-i;j++) {
				if(x[j]>x[j+1]) {
					temp = x[j];
					x[j]=x[j+1];
					x[j+1]=temp;
				}
			}
			
			
			
		}
		for(int i=0;i<x.length;i++) {
			System.out.print(x[i]+" ");
		}

	}

}


9.
public class TotalAndAverage {

	public static void main(String[] args) {
		int[] s1 = { 1, 2, 3 };
		int[] s2 = { 1, 2, 3 };
		int[] s3 = { 1, 2, 3 };
		//total(s1, s2, s3);
		eachSubject(s1, s2, s3);
	}

	public static void eachSubject(int[] s1, int[] s2, int[] s3) {
		float total = 0, temp = 0;
		for(int i=0;i<s1.length;i++) {
			total=s1[i]+s2[i]+s3[i];
			System.out.println("Total of the "+i+"thsubject is "+ total);
			System.out.println("average of the "+i+"thsubject is "+ total/3);
			
		}
	}

	public static void total(int[] s1, int[] s2, int[] s3) {
		int total = 0, temp = 0;
		total=s1[0]+s1[1]+s1[2]+s2[0]+s2[1]+s2[2]+s3[0]+s3[1]+s3[2];
		System.out.println("the total of all subject"+total);
		System.out.println("the avg of all subject"+total/3);
	}

}
