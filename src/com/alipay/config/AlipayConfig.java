package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *缁鎮曢敍娆發ipayConfig
 *閸旂喕鍏橀敍姘唨绾拷闁板秶鐤嗙猾锟�
 *鐠囷妇绮忛敍姘愁啎缂冾喖绗庨幋閿嬫箒閸忓厖淇婇幁顖氬挤鏉╂柨娲栫捄顖氱窞
 *娣囶喗鏁奸弮銉︽埂閿涳拷2017-04-05
 *鐠囧瓨妲戦敍锟�
 *娴犮儰绗呮禒锝囩垳閸欘亝妲告稉杞扮啊閺傞�涚┒閸熷棙鍩涘ù瀣槸閼板本褰佹笟娑氭畱閺嶈渹绶ユ禒锝囩垳閿涘苯鏅㈤幋宄板讲娴犮儲鐗撮幑顔垮殰瀹歌京缍夌粩娆戞畱闂囷拷鐟曚緤绱濋幐澶屽弾閹讹拷閺堫垱鏋冨锝囩椽閸愶拷,楠炲爼娼稉锟界�规俺顩︽担璺ㄦ暏鐠囥儰鍞惍浣碉拷锟�
 *鐠囥儰鍞惍浣风矌娓氭稑顒熸稊鐘叉嫲閻梻鈹掗弨顖欑帛鐎规繃甯撮崣锝勫▏閻㈩煉绱濋崣顏呮Ц閹绘劒绶垫稉锟芥稉顏勫棘閼板啨锟斤拷
 */

public class AlipayConfig {
	
//閳挴鍟岄埆鎾晫閳挴鍟岄埆鎾晫閳挴鍟岀拠宄版躬鏉╂瑩鍣烽柊宥囩枂閹劎娈戦崺鐑樻拱娣団剝浼呴埆鎾晫閳挴鍟岄埆鎾晫閳挴鍟岄埆鎾晫閳挴鍟岄埆鎾晫閳拷

	// 鎼存梻鏁D,閹劎娈慉PPID閿涘本鏁瑰▎鎹愬閸欓攱妫﹂弰顖涘亶閻ㄥ嚈PPID鐎电懓绨查弨顖欑帛鐎规繆澶勯崣锟�
	public static String app_id = "2021000117675560";
	
	// 閸熷棙鍩涚粔渚�鎸滈敍灞惧亶閻ㄥ嚤KCS8閺嶇厧绱SA2缁変線鎸�
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCWzhILrTz9SozXTwrDNUQMWJ2RnSH2woxGaNaNCMu5/Nh6NT+Q3mVBd34DzipycB/TRJhzhdl6clGa2uF7yyHk9FDregh7t2oel5CzmLgeV9ZWzgKJaASlL13LZF1zu02qcJhVIT3Zik1TamCBBbd9bm+8X15ZQNs6WPN/vVEjmZnrOCWMcgviAeQ+1k4MZpvvcQaycFBPDhZF/+CqbsOO8vS/ivIzherrU7l8Gybogc8bUhL6VjjovfPQZ+KiHAMh6phHQTJ/ncnqqim4FLSenQ0OU+gPhOja0qIsmKsIwn7f6rNLuHwuBDeoHteJSUhSbVgirMioIzVnET7mJUT9AgMBAAECggEAebzm0mhKCMsqwRD8xjL0uOa8ZHUtms7YgGpXcMi99WlIs/bSVrdBlETLBHVkzLb46grA6tkNhAxPFixFxDJqLTKRNFZyDLU2xHVkCadqUoxj6fUqFRRUU6jWFb/ytN9qRgHY5zgLftZnr8P7HYyo4GfLaYyvVGvHzeVKxD7nBk3VX6fV88wZT0k1p0g5Sm3SRlmzAT9ZbJfN1I3LBY9cJHVySAGYNuUJ+5GcI3HJZ7uqWPGoHzWXm1pe7ciPASc2rrj1gngqvHrraFnSpdvCJ0Vl1i1aETH85oy+Eglr2QZvraanPEInyEtYaSuNObKiR+Yi/uLnmLmq2GyyMaH2IQKBgQDXdmOjdsettWlutP8q+jfK1wCFbISV6o8jUaXSNkcDIGhD1MvmwWhts1l59XzjkQGM+8P6c8qziYOvCYnG1GmItzpc7ZF8Mzllv/vh5u5N4yGfYTPMWi3jp7pCXi3yuw5HxImC0eipzleY24X4ghUoaJbjf8SfxvzRCCEJZTOR6QKBgQCzLX6dise9Pw2kZAjyCl9WZUags6jfAi3FLpWf+diqsRGEfnj1IuCqTKVy0Ul8ppjBzuaglxXrDR81WE6TEEEyRkNgLAiEzG4bto++E1MGdU0sWBEmbvfUapqAtPFWb3Vf2EwBX/D8tO35tFSXy0ZldHlTzzUHCwnpoLmQyYf59QKBgFDR+MgNOxNetCCxxfFSEHGGuoxRy14MsQp3ivLSJ0r18gZXoPB65fgYSVzlB6a48tL2cWnV21gDIiEbO9IYRUniKQNIncTv1fzjydDP9d3DcA4/wNVLkmENvmE8wJGHNvEWuNoYcOSZIOSWm6c+7D7PFKJbf97LHnQuT24dxv1ZAoGAGX9J20VacxW77T7G/xp2wqaazFeEmmeG995PMHqvWGrmIUKWF9wkuFc73ADoQjK63imBLC0T02UEoeS1GbxgarUQ9WiOtccZjBwIjHXXhL3Ag6Tsm9mCrtmUrugQx8oIm+D9v9xVQMDGdJgyyX8Fv345nbGIzD3H5VUX0wC6ttkCgYEA08cc5NOSJA5cxteTVv4b6HicQyDG2RSAQfHZFTN8uh/OwzN0g/0UR/5wpdo5BqNHp9LPo4pq4ik1702lw3ZD5jpVY1TsmxpJncbZTVWZvrDdnGVY5IzaxqLc5eTyxAAdpi0mAjd8/K8jhLUzfq/QVhy5KP4fa/88DUr6L9zScLQ=";
	
	// 閺�顖欑帛鐎规繂鍙曢柦锟�,閺屻儳婀呴崷鏉挎絻閿涙ttps://openhome.alipay.com/platform/keyManage.htm 鐎电懓绨睞PPID娑撳娈戦弨顖欑帛鐎规繂鍙曢柦銉ｏ拷锟�
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqbQMlGdgU3qkBOfbHNZJiH2Xa1lPqbnBef1QtODRqw4q3uC0X2ObV4eJRBuldiOl1pz7nHiIv/fz4zdPO8y4HtGbfh15Nvw2dCOx90crtKAcBD/3by4bNxkXw5rT5M/oqWmXwa2d4OIajSukrsgqO9ngQbNnsc3AyeOrzQ7PtPzKGD51DnxBpAinCDLccgnMWgx5eXBCDPeIVbUJfphzchubxgUzh9PQOozMp77XJlwC57CK0WIcGYIBKTJCGeiwpAv7CeACzenW9UYHD34mKmWILfbImWiRrGZvfCRplu+/sFmj3FOX7sZb0EvC59y1kptry/h0fmRT8pIxADGuTQIDAQAB";

	// 閺堝秴濮熼崳銊ョ磽濮濄儵锟芥氨鐓℃い鐢告桨鐠侯垰绶�  闂囷拷http://閺嶇厧绱￠惃鍕暚閺佺鐭惧鍕剁礉娑撳秷鍏橀崝锟�?id=123鏉╂瑧琚懛顏勭暰娑斿寮弫甯礉韫囧懘銆忔径鏍秹閸欘垯浜掑锝呯埗鐠佸潡妫�
	public static String notify_url = "http://alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 妞ょ敻娼扮捄瀹犳祮閸氬本顒為柅姘辩叀妞ょ敻娼扮捄顖氱窞 闂囷拷http://閺嶇厧绱￠惃鍕暚閺佺鐭惧鍕剁礉娑撳秷鍏橀崝锟�?id=123鏉╂瑧琚懛顏勭暰娑斿寮弫甯礉韫囧懘銆忔径鏍秹閸欘垯浜掑锝呯埗鐠佸潡妫�
	public static String return_url = "http://localhost:8080/huawei-project/vmall/index2.jsp";

	// 缁涙儳鎮曢弬鐟扮础
	public static String sign_type = "RSA2";
	
	// 鐎涙顑佺紓鏍垳閺嶇厧绱�
	public static String charset = "utf-8";
	
	// 閺�顖欑帛鐎规繄缍夐崗锟�
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 閺�顖欑帛鐎规繄缍夐崗锟�
	public static String log_path = "C:\\";


//閳垟鍟堥埆鎴斿晥閳垟鍟堥埆鎴斿晥閳垟鍟堢拠宄版躬鏉╂瑩鍣烽柊宥囩枂閹劎娈戦崺鐑樻拱娣団剝浼呴埆鎴斿晥閳垟鍟堥埆鎴斿晥閳垟鍟堥埆鎴斿晥閳垟鍟堥埆鎴斿晥閳拷

    /** 
     * 閸愭瑦妫╄箛妤嬬礉閺傞�涚┒濞村鐦敍鍫㈡箙缂冩垹鐝棁锟藉Ч鍌︾礉娑旂喎褰叉禒銉︽暭閹存劖濡哥拋鏉跨秿鐎涙ê鍙嗛弫鐗堝祦鎼存搫绱�
     * @param sWord 鐟曚礁鍟撻崗銉︽）韫囨鍣烽惃鍕瀮閺堫剙鍞寸�癸拷
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

