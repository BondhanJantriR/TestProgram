package test1;

import java.util.Arrays;

public class App {

	public static void main(String... args) {
		App app = new App();
		app.prime(1, 20);
		System.out.println();
		int[] arr1 = {20,10,40,10,30};
		int[] arr2 = {30,10,70,50,30};
		app.sumArray(arr1,arr2);
	}
	
	public void prime(int x , int y) {
		while(x<=y) {
			int cek =1;
			int bil = 0;
			while(cek<=x) {
				if(x==1) {
					bil=2;
				}else if(x==2) {
					break;
				}else if(x%cek == 0) {
					bil = bil +1;
				}
				cek++;
			}
			if(bil==2) {
				System.out.print(x+" ");
			}
			x++;
		}
	}
	
	public void sumArray(int[] a, int[] b) {
		int n = 0;
		int x =a.length;
		int y=b.length;
		
		int[] arr = new int[x+y];

		for(int data : a) {
			arr[n] = data;
			n++;
		}
		for(int data : b) {
			arr[n] = data;
			n++;
		}
		Arrays.sort(arr);
		System.out.println(Arrays.toString(arr));
	}
}
