import 'package:get/get.dart';

class sessiondata extends GetxController{

  List Data = [
    "https://img.freepik.com/free-vector/yoga-pose_19361-28.jpg?size=338&ext=jpg",
    "https://static.vecteezy.com/system/resources/previews/000/266/889/non_2x/vector-natarajasana-yoga-pose-illustration.jpg",
    "https://i.pinimg.com/736x/e4/3a/c3/e43ac3d438f03dac8ca56c0c6fa9eb95.jpg",
    "https://th.bing.com/th/id/OIP.IHydyHz9XyMEEvn2QWMEwwHaGm?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.s4SKUJgQ-ZwGqK8DLj1QQgHaHa?pid=ImgDet&w=626&h=626&rs=1",
    "https://th.bing.com/th/id/OIP.u_aRaCs1yqhMsKTwzvWs7AHaH0?pid=ImgDet&w=194&h=205&c=7&dpr=1.3",
    "https://th.bing.com/th/id/OIP.vJ0smo4Y1KNrGN1BkQ1lAQAAAA?pid=ImgDet&w=194&h=172&c=7&dpr=1.3"
    "https://media.istockphoto.com/vectors/woman-in-yoga-pose-king-pigeon-vector-id136890649?k=6&m=136890649&s=612x612&w=0&h=WfmEnK5HH8SamBmuYEXvrvUxRAUKZjFMkhRYgOAeNdc=",
    "https://media.istockphoto.com/vectors/woman-in-yoga-pose-warrior-1-vector-id136890652?k=6&m=136890652&s=612x612&w=0&h=cjhkBPtRCcMuCy7SfOykBzJ_TtWyeexZ7N3GVHicERI=",
    "https://media.istockphoto.com/vectors/woman-in-yoga-pose-boat-vector-id108597519?k=6&m=108597519&s=612x612&w=0&h=BficKvw_jq4y9tchQSvFFEJDEZHVC6gGFc5CVL2aR84=",
    "https://media.istockphoto.com/vectors/woman-in-yoga-pose-revolved-extended-side-angle-vector-id108597451?k=6&m=108597451&s=170667a&w=0&h=pJNDgwyeVYrDco5ybvzXvd_B6d7dWgEGppjknE1SsHY=",
    "https://media.istockphoto.com/vectors/woman-in-yoga-pose-revolving-half-moon-vector-id136890643",
    "https://cdn3.vectorstock.com/i/thumb-large/00/72/adorable-woman-in-halasana-position-or-plough-pose-vector-25050072.jpg",
    "https://www.sheknows.com/wp-content/uploads/2018/08/shutterstock_1683990613-e1585333769369.jpg?w=1024",
    "https://mindbodygreen-res.cloudinary.com/images/w_767,q_auto:eco,f_auto,fl_lossy/org/xer1mhp9hk5o5igtw/warrior-iii.jpg",
    "https://th.bing.com/th/id/OIP.wy0K2t36fcqzU1WPnbarTgAAAA?pid=ImgDet&w=194&h=275&c=7&dpr=1.3",
    "https://th.bing.com/th/id/OIP.dbFAKTZ897s9PrwXA6RpZQHaHg?pid=ImgDet&rs=1",
    "https://mir-s3-cdn-cf.behance.net/project_modules/1400/76d9fe103755415.5f53f6af4fb71.jpg",
    "https://th.bing.com/th/id/OIP.LH-tYRt_BVn_xsSjRTKR_wHaEw?pid=ImgDet&w=1200&h=770&rs=1"
    "https://image.shutterstock.com/image-vector/girl-doing-yoga-home-online-260nw-1694824387.jpg",
    "https://media.istockphoto.com/vectors/creative-poster-design-with-illustration-of-woman-doing-yoga-for-yoga-vector-id1256813114?k=6&m=1256813114&s=170667a&w=0&h=vfInqqiV5-29Ge0rh4XGze35nnaSknBQB7tUU2Ku1Jg=",
    "https://th.bing.com/th/id/R.fd999956f049826da4ee5b430d932410?rik=2vC1QhUaPxacFA&riu=http%3a%2f%2fassets.wh.cdnds.net%2fimages%2f307%2fcd-forearmstand__medium_4x3.jpg&ehk=HDJ5znIdssmEhKV%2boCTYtpd%2bJY17naUuOOwsHvxNm1U%3d&risl=&pid=ImgRaw&r=0",
    "https://media.istockphoto.com/vectors/creative-poster-design-with-illustration-of-woman-doing-yoga-for-yoga-vector-id1256813700?k=6&m=1256813700&s=170667a&w=0&h=9GRtr9-TbcbIeh6ELK16G8PF6nt4QhE78otDcRkjPJo=",
    "https://cdn3.vectorstock.com/i/thumb-large/88/27/a-young-girl-is-engaged-in-pilates-with-a-ball-vector-35828827.jpg",
    "https://th.bing.com/th/id/OIP.H7WIF2BwZ5QsA9XbiyfqygHaHa?pid=ImgDet&w=2048&h=2048&rs=1",
    "https://th.bing.com/th/id/OIP.owUQiDjZDXg51v5en2D4-AAAAA?pid=ImgDet&w=331&h=302&rs=1",
    "https://thumbs.dreamstime.com/b/matsyendrasana%E5%A7%BF%E5%8A%BF%E7%9A%84%E9%80%97%E4%BA%BA%E5%96%9C%E7%88%B1%E7%9A%84%E6%BB%91%E7%A8%BD%E7%9A%84%E5%A5%B3%E5%AD%A9-%E6%89%A7%E8%A1%8C%E7%91%9C%E4%BC%BD%E3%80%81%E5%81%A5%E8%BA%AB%E6%88%96%E8%80%85%E4%BD%93%E6%93%8D%E9%94%BB%E7%82%BC%E7%9A%84%E6%AF%8D%E5%8D%A1%E9%80%9A%E4%BA%BA%E7%89%A9-146172460.jpg",
    "https://thumbs.dreamstime.com/z/young-pretty-woman-performing-yoga-exercise-female-cartoon-character-sitting-lotus-posture-meditating-girl-young-145564660.jpg",
    "https://movimentoesaude.com.br/wp-content/uploads/2019/07/ilustracao-movimento.png",
    "https://media.istockphoto.com/vectors/woman-in-yoga-pose-revolved-extended-side-angle-vector-id108597451?k=6&m=108597451&s=170667a&w=0&h=pJNDgwyeVYrDco5ybvzXvd_B6d7dWgEGppjknE1SsHY=",
    "https://static.vecteezy.com/system/resources/previews/000/559/132/original/yoga-pose-vector-illustration.jpg",
    "https://www.tampontrack.com/wp-content/uploads/2020/09/hero1-trsans1-1024x997.png"



  ];
}