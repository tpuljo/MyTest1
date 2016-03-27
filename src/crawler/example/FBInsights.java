package crawler.example;

import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.github.abola.crawler.CrawlerPack;


/**
 * 資料探索練習 Facebook Graph Api Search 
 * 
 * 重點
 * 1. 利用Graph Api調整出需要的資料
 * 2. 取得一組Access Token (long term token)
 * 3. 試著用你會的方式，先行探索資料
 * 
 * @author Abola Lee
 *
 */
public class FBInsights {
	
	public static void main(String[] args) {
		
		// 遠端資料路徑
		// >>>Fill here<<< 
		String uri = 
				"https://graph.facebook.com/v2.5"
				+ "/search?q=%E8%88%9E&type=page&fields=id,name,likes,talking_about_count"  // 補完
				+ "&access_token=CAAPFWnLNaNgBABzXt1pRDZBODRNE38EVtsH4qKTDouQCjjRUCpZCa8MGX21Yx90fWL0sfTKqZCB8pBxkQa7hfLS7sM5Kt57YBClYLYBr3tx1Sgw20IMRA7sGgZAe8S9aGcA42cJnvFuQyiosw9f8MpOuYdm4zQZC7ZBcSdbKzwF0RBxVhBnlEpzWCpADhStlkZD";  

		// Jsoup select 後回傳的是  Elements 物件
		Elements elems =
				CrawlerPack.start()
				.getFromJson(uri)
				.select("data");
		
		String output = "id,名稱,按讚數,討論人數\n";
		
		// 遂筆處理
		for( Element data: elems ){
			
			// 如何取出資料??
			// >>>Fill here<<< 
			String id =  data.select("id").text();
			String likes = data.select("name").text();
			String name = data.select("likes").text();
			String talking_about_count = data.select("talking_about_count").text();
			
			output += id+","+likes+",\""+name+"\","+talking_about_count+"\n";
		}
		
		System.out.println( output );
	} 
}
