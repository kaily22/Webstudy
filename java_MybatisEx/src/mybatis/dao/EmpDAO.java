package mybatis.dao;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.service.FactoryService;
import mybatis.vo.EmpVO;

/*
 * 
 * mybatis 사용 목적 중 하나가 
 * DAO(Data Access Object) 클래스로부터 SQL문을 분리하는 것이다.
 * 분리된 SQL문은 SQL mapper 파일에 작성하여 DAO에서는
 * Sqlsession 객체가 SQL mapper 파일을 참조하게 한다.
 */ 

public class EmpDAO {
   
   //저장되는 객체는 EmpVO 타입으로 저장
   public static List<EmpVO> getTotal(){
      
      /*
       * 이미 생성되어 있는 factory를 이용하여 SqlSession을 얻어낸다.
       * select 작업은 auto commit을 하지 않아도 되기때문에 
       * openSession() 메소드 호출 시 true를 인자값으로 주지 않아도 된다.
       */
      
      //select는 true 필요 없음-> 불러 오는거기 때문에 sqlsession 객체 얻어옴
      SqlSession ss = FactoryService.getFactory().openSession();
      
      List<EmpVO> list = ss.selectList("emp.total");
      
      ss.close();
      
      return list;
   }
   
   public static int add(String empno, String ename, String position) {
      /*
       * mapper을 호출할 때 Map 자료구조로 전달해야 하므로 Map계열의 객체 생성
       */
      
      Map<String, String> map = new Hashtable<String, String>();
      
      map.put("empno",empno);
      map.put("ename",ename);
      map.put("position",position);
      
      /*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
       * SqlSession 객체를 얻을 때 OpenSession(true)같이 호출하면
       * DML(insert,update,delete) 실행시 auto commit을 수행하는
       * SqlSession 객체를 얻을 수 있다. 꼭 true를 인자값으로 준다.
       */
      
      //인자값으로 true를 주면 자동으로 commit을 준다. -> insert는 변화를 주기 때문에 auto commit필요
      SqlSession ss = FactoryService.getFactory().openSession(true);
      
      int cnt = ss.insert("emp.add",map);
      ss.close();
      return cnt;
   }
   
}