package common;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Util {

    /**
     * �뀒�뒪�듃瑜� �쐞�븳 硫붿씤硫붿냼�뱶.
     */
    public static void main(String[] args) throws IOException {
        
        //util u = new util();
        
        //�씠誘몄�紐⑸줉�쓣 媛��졇�삱 �뤃�뜑�쐞移섎�� 吏��젙. (�젅��寃쎈줈, �긽��寃쎈줈 紐⑤몢 媛��뒫)
        List<File> list = getImgFileList("WebContent/imgUp");
        
        for(File f : list) {
            System.out.println(f.getName()); //�뙆�씪 �씠由� 異쒕젰
            //System.out.println(f.getPath()); //寃쎈줈 異쒕젰
            //System.out.println(f.getAbsolutePath()); //�젅�� 寃쎈줈 異쒕젰
            //System.out.println(f.getCanonicalPath()); //�젙洹� 寃쎈줈 異쒕젰
        }
    }
    
    
    /**
     * �빐�떦 寃쎈줈�쓽 �씠誘몄� �뙆�씪 紐⑸줉 諛섑솚 
     */
    public static List<File> getImgFileList(String path){        
         
        return getImgFileList(new File(path));
    }    

    /**
     * �빐�떦 寃쎈줈�쓽 �씠誘몄� �뙆�씪 紐⑸줉 諛섑솚 
     */
    public static List<File> getImgFileList(File file){        
            
        List<File> resultList = new ArrayList<File>(); //�씠誘몄� �뙆�씪�쓣 ���옣�븷 由ъ뒪�듃 �깮�꽦
        
         //吏��젙�븳 �씠誘몄��뤃�뜑媛� 議댁옱 �븷吏� �븡�쓣寃쎌슦 鍮� 由ъ뒪�듃 諛섑솚.
        //System.out.println("�뙆�씪議댁옱 �뿬遺�: "+file.exists());
        if(!file.exists()) return resultList;
        
        File[] list = file.listFiles(new FileFilter() { //�썝�븯�뒗 �뙆�씪留� 媛��졇�삤湲� �쐞�빐 FileFilter�젙�쓽
            
            String strImgExt = "jpg|jpeg|png|gif|bmp"; //�뿀�슜�븷 �씠誘몄����엯
            
            @Override
            public boolean accept(File pathname) {                            
                
                //System.out.println(pathname);
                boolean chkResult = false;
                if(pathname.isFile()) {
                    String ext = pathname.getName().substring(pathname.getName().lastIndexOf(".")+1);
                    //System.out.println("�솗�옣�옄:"+ext);
                    chkResult = strImgExt.contains(ext.toLowerCase());        
                    //System.out.println(chkResult +" "+ext.toLowerCase());
                } else {
                    chkResult = true;
                }
                return chkResult;
            }
        });        
        
        for(File f : list) {            
            if(f.isDirectory()) {
                //�뤃�뜑�씠硫� �씠誘몄�紐⑸줉�쓣 媛��졇�삤�뒗 �쁽�옱硫붿꽌�뱶瑜� �옱洹��샇異�
                resultList.addAll(getImgFileList(f));                 
            }else {            
                //�뤃�뜑媛� �븘�땲怨� �뙆�씪�씠硫� 由ъ뒪�듃(resultList)�뿉 異붽�
                resultList.add(f);
            }
        }            
        return resultList; 
    }
    
    //�솗�옣�옄瑜� �젣�쇅�븳 �뙆�씪 �씠由� 留� 異쒕젰
    public static String getFileNameNoExt(String filepath){        
        String fileName = filepath.substring(0,  filepath.lastIndexOf("."));
        return fileName;
    }    
    
    //�뙆�씪 �솗�옣�옄留� 異쒕젰
    public static String getFileExt(String filepath){
        String ext = filepath.substring(filepath.lastIndexOf(".")+1);
        return ext;
    }
    
    //�뙆�씪�뙣�뒪�뿉�꽌 �씠誘몄� �긽��寃쎈줈 異쒕젰
    //�젅��寃쎈줈�뿉�꽌 �씠誘몄��뤃�뜑(images)瑜� 以묒떖�쑝濡� �긽��寃쎈줈瑜� 諛섑솚.
    //�뙣�뒪 : �젅��寃곕줈/images/1-A/1-A_0.jpg 
    //    => 1-A/1-A_0.jpg
    public static String getImgSrc(File target){
        String url = target.getPath().substring(target.getPath().lastIndexOf("imgUp"));
        return url;
    }
    

}