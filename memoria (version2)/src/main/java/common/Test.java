package common;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class Test {
	public static void main(String[] args) {
		Map<String,Integer> list = new HashMap<String,Integer>();
		list.put("테스트1", 12);
		list.put("테스트2", 12);
		list.put("테스트3", 12);
		list.put("테스트4", 12);
		
		AtomicInteger i = new AtomicInteger(1);
		list.forEach((key, value) -> {
			System.out.println(i);
			System.out.println(key+" "+i.getAndIncrement()+" "+value);
			    
			});
	}

}
