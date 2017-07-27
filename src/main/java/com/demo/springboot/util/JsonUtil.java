package com.demo.springboot.util;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.SerializeWriter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.serializer.SimpleDateFormatSerializer;
import com.alibaba.fastjson.serializer.ValueFilter;
/**
 * 
 * ClassName: Json解析工具
 * @Description: TODO
 * @author YanMing
 * @date 2015-12-16
 */
public class JsonUtil {
	private static SerializeConfig mapping = new SerializeConfig();  
    private static String dateFormat;  
    static {  
        dateFormat = "yyyy-MM-dd HH:mm:ss";  
    }  

    private static SerializerFeature[] features = {SerializerFeature.WriteNullNumberAsZero,SerializerFeature.WriteNullStringAsEmpty,SerializerFeature.DisableCircularReferenceDetect};
	
	
	/**
	 * 对象转成JSON字符串（空也有）
	 * @param obj
	 * @return
	 */
	public static String getObjSerializableJSONStr(Object obj){
		String jsonstr ="";
		if(obj!=null){
			
			/**
			 *Fastjson的SerializerFeature序列化属性
			 *DisableCheckSpecialChar：一个对象的字符串属性中如果有特殊字符如双引号，将会在转成json时带有反斜杠转移符。如果不需要转义，可以使用这个属性。默认为false 
			 *QuoteFieldNames———-输出key时是否使用双引号,默认为true 
			 *WriteMapNullValue——–是否输出值为null的字段,默认为false 
			 *WriteNullNumberAsZero—-数值字段如果为null,输出为0,而非null 
			 *WriteNullListAsEmpty—–List字段如果为null,输出为[],而非null 
			 *WriteNullStringAsEmpty—字符类型字段如果为null,输出为”“,而非null 
			 *WriteNullBooleanAsFalse–Boolean字段如果为null,输出为false,而非null
			 *
			 */
			 jsonstr = JSON.toJSONString(obj,SerializerFeature.WriteMapNullValue);
		}
		
		return jsonstr;
	}
	
	
	
	
	/**
	 * 將對象轉成字符串包括null變成“”
	 * @param object
	 * @param features
	 * @return
	 */
	public static String toJSONString(Object object,
			SerializerFeature... features) {
		SerializeWriter out = new SerializeWriter();
		String s;
		JSONSerializer serializer = new JSONSerializer(out);
		SerializerFeature arr$[] = features;
		int len$ = arr$.length;
		for (int i$ = 0; i$ < len$; i$++) {
			SerializerFeature feature = arr$[i$];
			serializer.config(feature, true);
		}
		serializer.getValueFilters().add(new ValueFilter() {
			public Object process(Object obj, String s, Object value) {
				if (null != value) {
					if (value instanceof java.util.Date) {
						return String.format("%1$tF %1tT", value);
					}
					return value;
				} else {
					return "";
				}
			}
		});
		serializer.write(object);
		s = out.toString();
		out.close();
		return s;
	}
	
	
	
	
	/**
	 * 
	* @Title: 根据KEY获取json字符串中对应的 
	* @Description: TODO(根据KEY获取json字符串中对应的) 
	* @param @param jsonStr
	* @param @param keyArr
	* @param @return    设定文件 
	* @return Object[]    返回类型 
	* @throws 
	* @author YanMing
	 */
	public static Object[] getValuefromKeyByJsonStr(String jsonStr,String[] keyArr){
		Object[] valueArr=null;
		if(jsonStr!=null&&!"".equals(jsonStr)){
			if(keyArr.length>0){
				valueArr= new String[keyArr.length];
				JSONObject jsonObj= JsonUtil.jsonStrToJSONObject(jsonStr);
				for(int i=0;i<keyArr.length;i++){
					valueArr[i]=jsonObj.getString(keyArr[i]);
				}
				
			}
		
		}
		return valueArr;
	}
	
	public static boolean checkJsonStrisHaveKeyField(String jsonStr,String[] keyArr){
		JSONObject jsonObj= JsonUtil.jsonStrToJSONObject(jsonStr);
		boolean flag=true;
		for (int i = 0; i < keyArr.length; i++) {
			//先用jsonObject.containsKey(key)判断，有再去取
			if(!jsonObj.containsKey(keyArr[i])){
				flag=false;
				//有字段不存在，停止循
				break;
			}
		}
	
	return  flag;
	}
	
	public static Object[] getValuefromKeyByJsonObj(JSONObject jsonObj,String[] keyArr){
		Object[] valueArr=null;
		if(jsonObj!=null){
			valueArr= new String[keyArr.length];
			for(int i=0;i<keyArr.length;i++){
				valueArr[i]=jsonObj.getString(keyArr[i]);
			}
		
		}
		return valueArr;
	}

	
	 /** 将JSON字符串转换为JSONObject或者JSONArray**/ 
	public static Object jsonStrToJSON(String jsonStr){
		Object json = JSON.parse(jsonStr)  ;
		 return json;
	}
	
	
	
  

    /** 将JSON字符串转换为JavaBean对象 **/ 
	@SuppressWarnings("unchecked")
	public static Object jsonStrToObject(String jsonStr,Class czz){
		Object obj = JSON.parseObject(jsonStr,  czz)  ;
//		Object obj = JSON.toJavaObject(JSON.parseObject(jsonStr),  czz);
		return obj;
	}
     

    /** 将JavaBean对象转换为JSON字符**/  
	public static String objectToStr(Object obj){
		 String jsonStr= JSON.toJSONString(obj); 
		 return jsonStr;
	}
	
	
	/** 
     * 数组转json格式字符
     */  
    public static String arrayToJsonStr(String[] arr){  
    	String jsonStr = "";
        if(arr.length>0){
    	    jsonStr = JSON.toJSONString(arr, true);  
        }
        return jsonStr;
    }  
    
    /** 
     * json格式字符串转JSON数组 
     */  
    public static JSONArray jsonStrToJSONArray(String jsonStr){  
    	JSONArray jsonArr =null;
    	if(jsonStr!=null&&!"".equals(jsonStr)){
    		jsonArr = JSON.parseArray(jsonStr);  
    	}
       return jsonArr;
    } 
    
    /** 
     * json格式字符串转JSONObject 
     */  
    public static JSONObject jsonStrToJSONObject(String jsonStr){  
    	JSONObject jsonObj =null;
    	if(jsonStr!=null&&!"".equals(jsonStr)){
    		jsonObj = JSON.parseObject(jsonStr) ;
    	}
       return jsonObj;
    } 
    
    
    /** 
     * OBJECT数组转json格式字符
     */  
    public static String arrayobjToJsonStr(Object[] objArr){  
        String jsonStr = "";
        if(objArr.length>0){
    	    jsonStr = JSON.toJSONString(objArr, true);  
        }
        return jsonStr;
    }
    
    

    
    /** 
     * list集合转json格式字符
     */  
    public static  String listToJsonStr(List<?> list){  
        String jsonStr = "";
        if(list!=null&&list.size()>0){
    	    jsonStr =  JSON.toJSONString(list,  SerializerFeature.WriteDateUseDateFormat);  
        }
        return jsonStr;
    }
    
    public static  String listToJsonStrDataType(List<?> list,String dateFormat){  
        String jsonStr = "";
        if(list!=null&&list.size()>0){
        	if(dateFormat==null||"".equals(dateFormat)){
        		dateFormat=JsonUtil.dateFormat;
        	}
        	 mapping.put(Date.class, new SimpleDateFormatSerializer(dateFormat));  
    	    jsonStr =  JSON.toJSONString(list, mapping);  
        }
        return jsonStr;
    }
	
	
	/** 将JSON字符串转换为List对象 **/ 
	@SuppressWarnings("unchecked")
	public static List<?> jsonStrToList(String jsonStr,Class czz){
		//解析json字符
		List<?> list = JSON.parseArray(jsonStr,czz);
		return list;
	}
	/** 将JSON字符串转换为String 的List对象 **/ 
	public static List<String> jsonStrToStringList(String jsonStr){
		List<String> list = JSON.parseObject(jsonStr,new TypeReference<List<String>>(){}); 
		return list;
	}
	/** 将JSON字符串转换为map 的List对象 **/ 
	public static List<Map<String,Object>> jsonStrToMapList(String jsonStr){
		List<Map<String,Object>> list = JSON.parseObject(jsonStr,new TypeReference<List<Map<String,Object>>>(){});
		return list;
	}
  
	 /** 
     * map转json格式字符
     */  
    public static String mapToJson(Map<?,?> map){  
        String jsonStr = "";
        if(map!=null){
    	    jsonStr =  JSON.toJSONString(map, true);  
        }
        return jsonStr;
        
    }
    
    /**
     * 判断list 集合长度是否大于1000条数据
     */
    
    public static boolean  muchData(int size){
    	boolean flag = false;
    	if(size <= 1000){
    		flag = true;
    	}
		return flag;
    }
    
    /**
     * 单位缩进字符串。
     */
    private static String SPACE = "   ";
    
    /**
     * 返回格式化JSON字符串。
     * 
     * @param json 未格式化的JSON字符串。
     * @return 格式化的JSON字符串。
     * 
	 * 该类的方法formatJson将JSON字符串格式化，方便查看JSON数据。
	 * <p>例如：
	 * </p><p>JSON字符串：["yht","xzj","zwy"]
	 * </p><p>格式化为：
	 * </p><p>[
	 * </p><p>     "yht",
	 * </p><p>     "xzj",
	 * </p><p>     "zwy"
	 * </p><p>]
	 * 
	 * </p><p>使用算法如下：
	 * </p><p>对输入字符串，追个字符的遍历
	 * </p><p>1、获取当前字符。
	 * </p><p>2、如果当前字符是前方括号、前花括号做如下处理：
	 * </p><p>（1）如果前面还有字符，并且字符为“：”，打印：换行和缩进字符字符串。
	 * </p><p>（2）打印：当前字符。
	 * </p><p>（3）前方括号、前花括号，的后面必须换行。打印：换行。
	 * </p><p>（4）每出现一次前方括号、前花括号；缩进次数增加一次。打印：新行缩进。
	 * </p><p>（5）进行下一次循环。
	 * </p><p>3、如果当前字符是后方括号、后花括号做如下处理：
	 * </p><p>（1）后方括号、后花括号，的前面必须换行。打印：换行。
	 * </p><p>（2）每出现一次后方括号、后花括号；缩进次数减少一次。打印：缩进。
	 * </p><p>（3）打印：当前字符。
	 * </p><p>（4）如果当前字符后面还有字符，并且字符不为“，”，打印：换行。
	 * </p><p>（5）继续下一次循环。
	 * </p><p>4、如果当前字符是逗号。逗号后面换行，并缩进，不改变缩进次数。
	 * </p><p>5、打印：当前字符。
	 * 
	 */
    public static String formatJson(String json)
    {
        StringBuffer result = new StringBuffer();
         
        int length = json.length();
        int number = 0;
        char key = 0;
         
        //遍历输入字符串。
        for (int i = 0; i < length; i++)
        {
            //1、获取当前字符。
            key = json.charAt(i);
             
            //2、如果当前字符是前方括号、前花括号做如下处理：
            if((key == '[') || (key == '{') )
            {
                //（1）如果前面还有字符，并且字符为“：”，打印：换行和缩进字符字符串。
                if((i - 1 > 0) && (json.charAt(i - 1) == ':'))
                {
                    result.append('\n');
                    result.append(indent(number));
                }
                 
                //（2）打印：当前字符。
                result.append(key);
                 
                //（3）前方括号、前花括号，的后面必须换行。打印：换行。
                result.append('\n');
                 
                //（4）每出现一次前方括号、前花括号；缩进次数增加一次。打印：新行缩进。
                number++;
                result.append(indent(number));
                 
                //（5）进行下一次循环。
                continue;
            }
             
            //3、如果当前字符是后方括号、后花括号做如下处理：
            if((key == ']') || (key == '}') )
            {
                //（1）后方括号、后花括号，的前面必须换行。打印：换行。
                result.append('\n');
                 
                //（2）每出现一次后方括号、后花括号；缩进次数减少一次。打印：缩进。
                number--;
                result.append(indent(number));
                 
                //（3）打印：当前字符。
                result.append(key);
                 
                //（4）如果当前字符后面还有字符，并且字符不为“，”，打印：换行。
                if(((i + 1) < length) && (json.charAt(i + 1) != ','))
                {
                    result.append('\n');
                }
                 
                //（5）继续下一次循环。
                continue;
            }
             
            //4、如果当前字符是逗号。逗号后面换行，并缩进，不改变缩进次数。
            if((key == ','))
            {
                result.append(key);
                result.append('\n');
                result.append(indent(number));
                continue;
            }
             
            //5、打印：当前字符。
            result.append(key);
        }
         
        return result.toString();
    }
     
    /**
     * 返回指定次数的缩进字符串。每一次缩进三个空格，即SPACE。
     * 
     * @param number 缩进次数。
     * @return 指定缩进次数的字符串。
     */
    private static String indent(int number)
    {
        StringBuffer result = new StringBuffer();
        for(int i = 0; i < number; i++)
        {
            result.append(SPACE);
        }
        return result.toString();
    }

  
   
}
