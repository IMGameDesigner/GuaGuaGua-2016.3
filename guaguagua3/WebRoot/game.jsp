<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%String name = request.getParameter("name");

				name=new String(name.getBytes("iso-8859-1"),"utf-8");
				%>
  <head>
  <!-- http://localhost:8080/guaguagua/ -->
    <title>guaguagua2</title>
    <img src="images/games/background.png" style="position:absolute;" id="back" >
    <img src="images/games/background.png" style="position:absolute;" id="back2" >
    <img src="images/games/begin.png" style="position:absolute;" id="ok"  onclick="button_ok();">
    <img src="images/games/qingwa.png" style="position:absolute;" id="qingwa"   onclick="button_qingwa();">
    <img src="images/games/wenzi.png" style="position:absolute;" id="wenzi1" >
    <img src="images/games/wenzi.png" style="position:absolute;" id="wenzi2" >
    <img src="images/games/wenzi.png" style="position:absolute;" id="wenzi3" >
    <img src="images/games/wenzi.png" style="position:absolute;" id="wenzi4" >
    <img src="images/games/wenzi.png" style="position:absolute;" id="wenzi5" >
    <img src="images/games/tree.png" style="position:absolute;" id="tree1"  >
    <img src="images/games/tree.png" style="position:absolute;" id="tree2"  >
    <img src="images/games/tree.png" style="position:absolute;" id="tree3"  >
    <img src="images/games/tree.png" style="position:absolute;" id="tree4"  >
    <img src="images/games/tree.png" style="position:absolute;" id="tree5"  >
    <img src="images/games/shetou.png" style="position:absolute;" id="shetou"  >
    <img src="images/games/jindutiaodown.png" style="position:absolute;" id="jindudown"  >
    <img src="images/games/jindutiaoup.png" style="position:absolute;" id="jinduup"  >
    <audio src="images/games/praise.wav" id="praise"></audio>
    
       <script language="javascript">
//è·åå±å¹åè¾¨çå¼å§
if (window.innerWidth)
w = window.innerWidth;
else if ((document.body) && (document.body.clientWidth))
w = document.body.clientWidth;
// è·åçªå£é«åº¦
if (window.innerHeight)
h = window.innerHeight;
else if ((document.body) && (document.body.clientHeight))
h = document.body.clientHeight;
// éè¿æ·±å¥ Document åé¨å¯¹ body è¿è¡æ£æµï¼è·åçªå£å¤§å°
if (document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth)
{
h = document.documentElement.clientHeight;
w = document.documentElement.clientWidth;
}
//è·åå±å¹åè¾¨çç»æ
       back=document.getElementById('back');
       back.style.left=0;
       back.style.top=0;
       back.width = w;
       back.height=h;
       
       back2=document.getElementById('back2');
       back2.style.left=w;
       back2.style.top=0;
       back2.width = w;
       back2.height=h;

       ok=document.getElementById('ok');
       ok.style.left="0";
       ok.style.top="0";
       ok.width = "0";
       ok.height="0";
       
       qingwa=document.getElementById('qingwa');
       qingwa.style.left="0";
       qingwa.width = "0";
       
       wenzi1=document.getElementById('wenzi1');
       wenzi1.style.left="0";
       wenzi1.width = "0";
       
       wenzi2=document.getElementById('wenzi2');
       wenzi2.style.left="0";
       wenzi2.width = "0";
       
       wenzi3=document.getElementById('wenzi3');
       wenzi3.style.left="0";
       wenzi3.width = "0";
       
       wenzi4=document.getElementById('wenzi4');
       wenzi4.style.left="0";
       wenzi4.width = "0";
       
       wenzi5=document.getElementById('wenzi5');
       wenzi5.style.left="0";
       wenzi5.width = "0";
       
       tree1=document.getElementById('tree1');
       tree1.style.left="0";
       tree1.width = "0";
       
       tree2=document.getElementById('tree2');
       tree2.style.left="0";
       tree2.width = "0";
       
       tree3=document.getElementById('tree3');
       tree3.style.left="0";
       tree3.width = "0";
       
       tree4=document.getElementById('tree4');
       tree4.style.left="0";
       tree4.width = "0";
       
       tree5=document.getElementById('tree5');
       tree5.style.left="0";
       tree5.width = "0";
       
       shetou=document.getElementById('shetou');
       shetou.style.left="0";
       shetou.width = "0";
       
       jinduup=document.getElementById('jinduup');
       jinduup.style.left="0";
       jinduup.width = "0";
       
       jindudown=document.getElementById('jindudown');
       jindudown.style.left="0";
       jindudown.width = "0";
       
       var caser,casert,i;
       var treeh = [];
       var wenzih = [];
       var shetoudirection=-1,shetouh=0;
       var wjtime=2000;
       var lose=0;
       var sum=0;
       var backl1=0,backl2=w;
       var speed=3;
       
       for(i=1;i<=5;i++){
       treeh[i]=Math.ceil(5*Math.random());
       wenzih[i]=Math.ceil(5*Math.random());
       }
       function button_ok(){
          closecaser1();
          opencaser2();
       }
       function button_qingwa(){
          if(caser==3){
          //speed=4;
             if(shetoudirection==1)shetoudirection=-1;else shetoudirection=1;
          }
       }
   function opencaser1(){
     caser=1;
     ok.style.top=h/2-h/8/2;
     ok.style.left=w/2-h/4/2;
     ok.width =h/4;
     ok.height=h/12;
   }
   
   function closecaser1(){
      caser=0;
      ok.style.left="-100000px";
   }
   function opencaser2(){
      caser=2;casert=0;
      qingwa.style.top=h*3/4-h/8/2;
      qingwa.style.left=-h/4/2;
      qingwa.width =h/8;
      qingwa.height=h/8;
      
      tree1.style.top=0;
      tree1.style.left=(w+h/20)/5-h/20;
      tree1.width =h/20;
      tree1.height=h*treeh[1]/2/5;
      
      tree2.style.top=0;
      tree2.style.left=(w+h/20)*2/5-h/20;
      tree2.width =h/20;
      tree2.height=h*treeh[2]/5/2;
      
      tree3.style.top=0;
      tree3.style.left=(w+h/20)*3/5-h/20;
      tree3.width =h/20;
      tree3.height=h*treeh[3]/5/2;
      
      tree4.style.top=0;
      tree4.style.left=(w+h/20)*4/5-h/20;
      tree4.width =h/20;
      tree4.height=h*treeh[4]/5/2;
      
      tree5.style.top=0;
      tree5.style.left=(w+h/20)*5/5-h/20;
      tree5.width =h/20;
      tree5.height=h*treeh[5]/5/2;
      
      wenzi1.style.top=h*wenzih[1]/2/5;
      wenzi1.style.left=(w+h/20)/5-h/20-w/10;
      wenzi1.width =h/20;
      wenzi1.height=h/20;
      
      wenzi2.style.top=h*wenzih[2]/2/5;
      wenzi2.style.left=(w+h/20)*2/5-h/20-w/10;
      wenzi2.width =h/20;
      wenzi2.height=h/20;
      
      wenzi3.style.top=h*wenzih[3]/2/5;
      wenzi3.style.left=(w+h/20)*3/5-h/20-w/10;
      wenzi3.width =h/20;
      wenzi3.height=h/20;
      
      wenzi4.style.top=h*wenzih[4]/2/5;
      wenzi4.style.left=(w+h/20)*4/5-h/20-w/10;
      wenzi4.width =h/20;
      wenzi4.height=h/20;
      
      wenzi5.style.top=h*wenzih[5]/2/5;
      wenzi5.style.left=(w+h/20)*5/5-h/20-w/10;
      wenzi5.width =h/20;
      wenzi5.height=h/20;
      
      jinduup.style.top=h*4/5;
      jinduup.style.left=w/2;
      jinduup.width =w*19/40;
      jinduup.height=h/20;
      
      jindudown.style.top=h*4/5;
      jindudown.style.left=w/2;
      jindudown.width =w*19/40;
      jindudown.height=h/20;
   }
   function closecaser2(){
      caser=0;
   }
   function opencaser3(){
      caser=3;casert=0;
   }
   function closecaser3(){
      caser=0;
      qingwa.style.top=100000;
      tree1.style.top=100000;
      tree2.style.top=100000;
      tree3.style.top=100000;
      tree4.style.top=100000;
      tree5.style.top=100000;
      wenzi1.style.top=100000;
      wenzi2.style.top=100000;
      wenzi3.style.top=100000;
      wenzi4.style.top=100000;
      wenzi5.style.top=100000;
      jinduup.style.top=100000;
      jindudown.style.top=100000;
      shetou.style.top=100000;
   }
   //copy:postæ¹æ³
   function post(URL, PARAMS) {        
    var temp = document.createElement("form");        
    temp.action = URL;        
    temp.method = "post";        
    temp.style.display = "none";        
    for (var x in PARAMS) {        
        var opt = document.createElement("textarea");        
        opt.name = x;        
        opt.value = PARAMS[x];        
        // alert(opt.name)        
        temp.appendChild(opt);        
    }        
    document.body.appendChild(temp);        
    temp.submit();        
    return temp;        
    }      
    //copy end

   //======load
   opencaser1();
   //music load
   praise=document.getElementById('praise');
   
   function timer(){
   
   if(sum>10&&sum<=20)speed=2;
   if(sum>20)speed=1;
   
   if(lose!=0){closecaser3();}else{
      if(caser==3){
         backl1-=w/1000;
         backl2-=w/1000;
         if(backl1<=-w){backl1=0;backl2=w;}
         back.style.left=backl1;
         back2.style.left=backl2;
      }
      if(caser==2){
         if(casert<200){
            casert++;
            qingwa.style.left=w*casert/200/3-h/8/2;
         }
         if(casert==200){
            closecaser2();
            opencaser3();
         }
      }
      if(caser==3){
         
         wjtime-=1;
         jinduup.width=wjtime*w*19/2000/40;
         if(shetoudirection==1){
            shetouh+=h/100;
            shetou.style.top=h*3/4-h/8/2-shetouh+h/120;
            shetou.style.left=w/3;
            shetou.width =h/50;
            shetou.height=shetouh+h/25;
         }else{if(shetouh>0){
            shetouh-=h/100;
            shetou.style.top=h*3/4-h/8/2-shetouh+h/120;
            shetou.style.left=w/3;
            shetou.width =h/50;
            shetou.height=shetouh+h/25;
         }else{
            shetou.height=0;
         }
         }
         if(casert<=120){
            if(casert==100&&(h*3/4-h/8/2-shetouh)<wenzih[3]*h/10+h/20){
                 wenzih[3]=0;
                 wenzi3.style.top=wenzih[3];
                 sum++;
                 wjtime+=200;
                 
                 praise.play();
                 if(wjtime>2000)wjtime=2000;
                 }
            if(casert==40&&(h*3/4-h/8/2-shetouh)<treeh[2]*h/10)
                {
                lose=1;
                post('jspandservlet_game_end.jsp', {fail:'tree',name:'<%=name%>',score:sum}); 
                //sumä¸ºjséçintåéï¼å­ç¬¦å ''
                //window.location.href="game_end.jsp";
                //document.write("<h1>èå¤´ç¢°å°æ¯éï¼æ¸¸æç»æï¼å·æ°æµè§å¨å¯ä»¥éæ°å¼å§ï¼æ¨çåæ°ä¸ºï¼"+ sum +"</h1>" );
                }
            if(wjtime<=0){lose=1;
            post('jspandservlet_game_end.jsp', {fail:'time',name:'<%=name%>',score:sum}); 
            //document.write( "<h1>æ¶é´å°äºï¼æ¸¸æç»æï¼å·æ°æµè§å¨å¯ä»¥éæ°å¼å§ï¼æ¨çåæ°ä¸ºï¼"+ sum +"</h1>" );
            }
            casert++;
            if(casert==120){
            casert=0;
            treeh[1]=treeh[2];
            treeh[2]=treeh[3];
            treeh[3]=treeh[4];
            treeh[4]=treeh[5];
            treeh[5]=Math.ceil(5*Math.random());
            tree1.height=treeh[1]*h/10;
            tree2.height=treeh[2]*h/10;
            tree3.height=treeh[3]*h/10;
            tree4.height=treeh[4]*h/10;
            tree5.height=treeh[5]*h/10;
            wenzih[1]=wenzih[2];
            wenzih[2]=wenzih[3];
            wenzih[3]=wenzih[4];
            wenzih[4]=wenzih[5];
            wenzih[5]=Math.ceil(5*Math.random());
            wenzi1.style.top=wenzih[1]*h/10;
            wenzi2.style.top=wenzih[2]*h/10;
            wenzi3.style.top=wenzih[3]*h/10;
            wenzi4.style.top=wenzih[4]*h/10;
            wenzi5.style.top=wenzih[5]*h/10;
            }
      tree1.style.left=(w)/5-h/20-(w)*casert/120/5;
      
      tree2.style.left=(w)*2/5-h/20-(w)*casert/120/5;

      tree3.style.left=(w)*3/5-h/20-(w)*casert/120/5;

      tree4.style.left=(w)*4/5-h/20-(w)*casert/120/5;

      tree5.style.left=(w)*5/5-h/20-(w)*casert/120/5;
      
      wenzi1.style.left=(w)/5-h/20-(w)*casert/120/5-w/10;
      
      wenzi2.style.left=(w)*2/5-h/20-(w)*casert/120/5-w/10;

      wenzi3.style.left=(w)*3/5-h/20-(w)*casert/120/5-w/10;

      wenzi4.style.left=(w)*4/5-h/20-(w)*casert/120/5-w/10;

      wenzi5.style.left=(w)*5/5-h/20-(w)*casert/120/5-w/10;

         }
      }
	  if(wenzih[1]==0)wenzi1.height=0;else wenzi1.height=h/20;
	  if(wenzih[2]==0)wenzi2.height=0;else wenzi2.height=h/20;
	  if(wenzih[3]==0)wenzi3.height=0;else wenzi3.height=h/20;
	  if(wenzih[4]==0)wenzi4.height=0;else wenzi4.height=h/20;
	  if(wenzih[5]==0)wenzi5.height=0;else wenzi5.height=h/20;
   }
   }
   var speedt=0;
   function timeset(){
   speedt++;
   if(speedt>1000000)speedt=1;
   if(speedt%speed==0)timer();
   }
   setInterval("timeset()",3);
   
          document.onkeydown=function(event){
           var e = event || window.event || arguments.callee.caller.arguments[0];
           if(e && e.keyCode==27){ // æ Esc 
               //è¦åçäºæ
            }
           if(e && e.keyCode==113){ // æ F2 
                 //è¦åçäºæ
               }            
             if(e && e.keyCode==13){ // enter é®
             button_qingwa();
                  //è¦åçäºæ
            }
       }; 
   </script>
  </head>
  <body >
  
  </body>
</html>
