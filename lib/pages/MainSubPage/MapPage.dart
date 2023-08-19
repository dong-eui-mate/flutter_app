import 'package:flutter/material.dart';
import 'package:kakaomap_webview/kakaomap_webview.dart';
import 'package:flutter/services.dart';

const kakaoMapKey = '0764dd9ed95f6acdc8c58d56e6c75891';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  final List<String> buildingTitle = [
    "건물을 선택해주세요",
    "대학본관", // 1
    "법정관", // 2
    "상경관", // 3
    "null", // 4
    "국제관", // 5
    "동의스포츠센터", // 6
    "상영관", // 7
    "수덕전", // 8
    "제1인문관", // 9
    "제2인문관", // 10
    "효민체육관", // 11
    "중앙도서관", // 12
    "여대생커리어개발관", // 13
    "제2효민생활관", // 14
    "의료보건관", // 15
    "생활과학관", // 16
    "음악관", // 17
    "창의관", // 18
    "지천관", // 19
    "산학협력관", // 20
    "건윤관", // 21
    "공학관", // 22
    "정보공학관", // 23
    "제1효민생활관", // 24
    "학생군사교육단", // 25
    "행복기숙사", // 26
  ];

  final List<List<String>> buildingFac = [
    ["여기에 시설이 표시됩니다"],
    ["서류출력기기", "장학지원팀", "ATM"],
    ["정독실"],
    ["GS"],
    ["X"],
    ["식당", "GS", "서브웨이"],
    ["체육관"],
    ["스쿼시장", "동아리방", "서점"],
    ["식당", "CU", "총학생회", "컵밥"],
    ["X"],
    ["CU"],
    ["체육관"],
    ["중앙도서관", "박물관", "카페"],
    ["여대생커리어개발센터"],
    ["CU"],
    ["헌혈의집"],
    ["GS"],
    ["예체능"],
    ["샤워실"],
    ["CU", "ATM", "핫도그", "맘스터치"],
    ["메이커스빌"],
    ["X"],
    ["GS", "원조등대"],
    ["식당", "GS"],
    ["X"],
    ["ROTC"],
    ["투썸플레이스", "세븐일레븐"]
  ];

  int _selIdx = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(24),
            alignment: AlignmentDirectional.topStart,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(buildingTitle[_selIdx], style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text('부산 부산진구 엄광로 176${_selIdx != 0 ? ' ' + _selIdx.toString() + '번 건물' : ''}', style: TextStyle(fontSize: 16, color: Colors.grey),),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: IconButton(
                        icon: Icon(Icons.copy),
                        color: Colors.grey,
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: '부산 부산진구 엄광로 176${_selIdx != 0 ? ' ' + _selIdx.toString() + '번 건물' : ''}'));
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('주소가 복사되었습니다!')));
                        },
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text("[편의시설]", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                ),
                Text(buildingFac[_selIdx].join('\n'))
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.black12,
                width: 2
              )
            )
          ),
          child: KakaoMapView(
            width: size.width,
            height: 400,
            kakaoMapKey: kakaoMapKey,
            lat: 35.14238069524192,
            lng: 129.0349196282848,
            customScript: '''
          map.setLevel(4);
          const positions = [
            new kakao.maps.LatLng(35.13951161812107, 129.03350978047823), // 1
            new kakao.maps.LatLng(35.139431906542, 129.03423185801213), // 2
            new kakao.maps.LatLng(35.13965851691776, 129.03281131368064), // 3
            new kakao.maps.LatLng(0, 0), // 4
            new kakao.maps.LatLng(35.14084380508521, 129.03225934030215), // 5
            new kakao.maps.LatLng(35.14002826341235, 129.03440577521258), // 6
            new kakao.maps.LatLng(35.140833283979674, 129.03422833835293), // 7
            new kakao.maps.LatLng(35.14160611531998, 129.03462606991135), // 8
            new kakao.maps.LatLng(35.14103197431251, 129.03527551231923), // 9
            new kakao.maps.LatLng(35.14171721054066, 129.0355229655907), // 10
            new kakao.maps.LatLng(35.142542056848235, 129.03604269110426), // 11
            new kakao.maps.LatLng(35.1424665468395, 129.0349053093561), // 12
            new kakao.maps.LatLng(35.14233505221227, 129.0336129421925), // 13
            new kakao.maps.LatLng(35.142963237643215, 129.03269603055097), // 14
            new kakao.maps.LatLng(35.143131524083884, 129.0334078531334), // 15
            new kakao.maps.LatLng(35.143713725431674, 129.03361982052797), // 16
            new kakao.maps.LatLng(35.14463317097925, 129.0338730982336), // 17
            new kakao.maps.LatLng(35.143712751618885, 129.03528741719256), // 18
            new kakao.maps.LatLng(35.14419018165233, 129.03503051180266), // 19
            new kakao.maps.LatLng(35.144808388682144, 129.03578098596395), // 20
            new kakao.maps.LatLng(35.14536963208942, 129.03589919600176), // 21
            new kakao.maps.LatLng(35.14433554063152, 129.03630131331926), // 22
            new kakao.maps.LatLng(35.1457815731808, 129.0365896897867), // 23
            new kakao.maps.LatLng(35.14376867554414, 129.0381248631926), // 24
            new kakao.maps.LatLng(35.14218546746424, 129.03688405855272), // 25
            new kakao.maps.LatLng(35.14193006362326, 129.0335809231687), // 26
          ];
          
          const imagesSrc = [
            "https://cdn-icons-png.flaticon.com/128/11516/11516605.png", // 1
            "https://cdn-icons-png.flaticon.com/128/11517/11517122.png", // 2
            "https://cdn-icons-png.flaticon.com/128/11517/11517207.png", // 3
            "https://cdn-icons-png.flaticon.com/128/11517/11517292.png", // 4
            "https://cdn-icons-png.flaticon.com/128/11517/11517382.png", // 5
            "https://cdn-icons-png.flaticon.com/128/11517/11517465.png", // 6
            "https://cdn-icons-png.flaticon.com/128/11517/11517527.png", // 7
            "https://cdn-icons-png.flaticon.com/128/11517/11517564.png", // 8
            "https://cdn-icons-png.flaticon.com/128/11517/11517596.png", // 9
            "https://cdn-icons-png.flaticon.com/128/11516/11516610.png", // 10
            "https://cdn-icons-png.flaticon.com/128/11516/11516689.png", // 11
            "https://cdn-icons-png.flaticon.com/128/11516/11516774.png", // 12
            "https://cdn-icons-png.flaticon.com/128/11516/11516870.png", // 13
            "https://cdn-icons-png.flaticon.com/128/11516/11516957.png", // 14
            "https://cdn-icons-png.flaticon.com/128/11517/11517064.png", // 15
            "https://cdn-icons-png.flaticon.com/128/11517/11517084.png", // 16
            "https://cdn-icons-png.flaticon.com/128/11517/11517093.png", // 17
            "https://cdn-icons-png.flaticon.com/128/11517/11517102.png", // 18
            "https://cdn-icons-png.flaticon.com/128/11517/11517112.png", // 19
            "https://cdn-icons-png.flaticon.com/128/11517/11517132.png", // 20
            "https://cdn-icons-png.flaticon.com/128/11517/11517138.png", // 21
            "https://cdn-icons-png.flaticon.com/128/11517/11517145.png", // 22
            "https://cdn-icons-png.flaticon.com/128/11517/11517153.png", // 23
            "https://cdn-icons-png.flaticon.com/128/11517/11517161.png", // 24
            "https://cdn-icons-png.flaticon.com/128/11517/11517169.png", // 25
            "https://cdn-icons-png.flaticon.com/128/11517/11517177.png", // 26
          ];
          
          var markers = [];
          function addMarker(idx) {
            var marker = new kakao.maps.Marker({position: positions[idx]});
            var markerImage = new kakao.maps.MarkerImage(
              imagesSrc[idx],
              new kakao.maps.Size(20, 20),
              new kakao.maps.Point(10, 10)
            );
            marker.setImage(markerImage);
            marker.setMap(map);
            markers.push(marker);
          }
          
          for (let i = 0; i < positions.length; ++i) {
          
            addMarker(i);
            kakao.maps.event.addListener(markers[i], 'click', (function() {
              // logic
              return function() {
                onTapMarker.postMessage(i);
              }
            })(i));
          }
          
          var zoomControl = new kakao.maps.ZoomControl();
          map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
          
          var mapTypeControl = new kakao.maps.MapTypeControl();
          map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
          
          ''',
            showMapTypeControl: true,
            showZoomControl: true,
            markerImageURL: 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png',
            onTapMarker: (message) {
              setState(() {
                _selIdx = int.parse(message.message) + 1;
              });
            },
          ),
        ),
    ]);
  }
}