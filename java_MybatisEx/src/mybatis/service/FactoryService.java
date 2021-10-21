package mybatis.service;

import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class FactoryService {
   
   private static SqlSessionFactory factory;
   
   static {
      /*
       * 먼저 Mybatis 설정 파일인 config.xml 파일로부터 설정 정보를 읽어들이기
       * 위한 입력 스트링을 생성한다.
       */
      try {
      
      Reader reader = Resources.getResourceAsReader("mybatis/config/config.xml");
      
      
      /*
       * 그리고 나서 입력 스트림을 통해 config.xml 파일을 읽어
       * sqlSessionFactory 객체를 생성한다.
       */
      //sqlSessionFactory 객체 생성 -> 빌더 클래스를 통해서 객체를 만든다.
      factory = new SqlSessionFactoryBuilder().build(reader);
      
      }catch(Exception e) {
      e.printStackTrace();
   }
  }
  public static SqlSessionFactory getFactory() {
     return factory;
  }
}