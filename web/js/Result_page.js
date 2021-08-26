const xhttp = new XMLHttpRequest();

xhttp.onreadystatechange = function(){
  if(xhttp.readyState==4 && xhttp.status==200){
        let jsonData = JSON.parse(jsonText);

        //내 등수
        let my_rank;
        let my_score = jsonData[0].score;
        jsonData.sort(function(a,b){
          return parseFloat(a.score) - parseFloat(b.score);
        });
        for(let i=0; i<jsonData.length; i++){
          if(my_score <= jsonData[i].score){
            my_rank = i;
            break;
          }
        }
        let txt3 = '';
        txt3 = '내 등수 : ' + my_rank + '/' + jsonData.length;
        document.getElementsByClassName('myrank').innerHTML = txt3;

        //평균
        let sc_total = 0;
        let sc0, sc1, sc2, sc3, sc4, sc5, sc6, sc7, sc8, sc9;
        sc0 = sc1 = sc2 = sc3 = sc4 = sc5 = sc6 = sc7 = sc8 = sc9 = 0;
        for(let i=0; i<jsonData.length; i++){
          sc_total += jsonData[i].score;
        }
        let sc_average;
        sc_average = sc_total/jsonData.length;
        let txt1 = '';
        txt1 += '<span style="width:47.2%;">' + '평균: ' + sc_average + '</span>';
        document.getElementsByClassName('average_stack1').innerHTML = txt1;


        //중앙값
        let sc_midvalue;
        jsonData.sort(function(a,b){
          return parseFloat(a.score) - parseFloat(b.score);
        });
        sc_midvalue = jsonData[jsonData.length/2];
        let txt2 = '';
        txt2 += '<span style="width:47.2%;">' + '중간값: ' + sc_midvalue + '</span>';
        document.getElementsByClassName('midvalue_stack2').innerHTML = txt2;


        //좌측 bar그래프
        for(let i=0; i<jsonData.length; i++){
          if(jsonData[i].score >=0 && jsonData[i].score <= 10){
            sc0++;
          }
          else if(jsonData[i].score >=11 && jsonData[i].score <= 20){
            sc1++;
          }
          else if(jsonData[i].score >=21 && jsonData[i].score <= 30){
            sc2++;
          }
          else if(jsonData[i].score >=31 && jsonData[i].score <= 40){
            sc3++;
          }
          else if(jsonData[i].score >=41 && jsonData[i].score <= 50){
            sc4++;
          }
          else if(jsonData[i].score >=51 && jsonData[i].score <= 60){
            sc5++;
          }
          else if(jsonData[i].score >=61 && jsonData[i].score <= 70){
            sc6++;
          }
          else if(jsonData[i].score >=71 && jsonData[i].score <= 80){
            sc7++;
          }
          else if(jsonData[i].score >=81 && jsonData[i].score <= 90){
            sc8++;
          }
          else{
            sc9++;
          }
        }

        new Chart(document.getElementById('Score_Chart').getContext('2d'), {
          type: 'bar',
          data: {
            labels: ['0~10','11~20','21~30','31~40','41~50','51~60','61~70','71~80','81~90','91~100'],
            datasets: [{
                label: '인원 수',
                bordercolor:['#fff'],
                borderWidth: 3,
                backgroundColor: [
                    '#c5d9ed',
                    '#9ec2e6',
                    '#72aee6',
                    '#4f94d4',
                    '#3582c4',
                    '#2271b1',
                    '#135e96',
                    '#0a4b78',
                    '#043959',
                    '#01263a'
                ],
                data: [sc0, sc1, sc2, sc3, sc4, sc5, sc6, sc7, sc8, sc9],
            }]
          },
        });

        // 우측 도넛 그래프
        let LV1, LV2, LV3, LV4, LV5;
        LV1 = LV2 = LV3 = LV4 = LV5 = 0;

        for(let i=0; i<jsonData.length; i++){
          if(jsonData[i].level == very_easy){
            LV1++;
          }
          else if(jsonData[i].level == easy){
            LV2++;
          }
          else if(jsonData[i].level == medium){
            LV3++;
          }
          else if(jsonData[i].level == difficult){
            LV4++;
          }
          else{
            LV5++;
          }
        }

        new Chart(document.getElementById("Donut_Chart"),{
          type: 'doughnut',
          data: {
            labels: ["매우쉬움", "쉬움", "보통", "어려움", "매우어려움"],
            datasets: [{
                label: '난이도',
                data: [LV1, LV2, LV3, LV4, LV5],
                backgroundColor: [
                    'mediumseagreen',
                    'mediumaquamarine',
                    'gold',
                    'lightsalmon',
                    'lightcoral',
                ]
            }]
          }
        });


  }
}
xhttp.open("GET", "/api/v1/result/{Subject_name}/{Professor_name}", true);
xhttp.send();
