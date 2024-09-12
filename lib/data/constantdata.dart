class Clubon {
  static Map<String, String> filters = {
    "Tonight": "assets/images/tonit.png",
    "This week": "assets/images/diswik.png",
    "New event": "assets/images/newevent.png",
    "Popular": "assets/images/popular.png",
  };

  static List<String> florida = [
    "Miami", "Fort Lauderdale", "Key West"
  ];
  static List<String> canada = [
    "Hamilton", "Toronto", "Vancouver"
  ];
  static List<String> andorra = [
    "Andorra", "El Pas de la Casa"
  ];
  static List<String>austria = [
    "Brisbane", "Fremantle", "Melbourne", "Perth", "Sydney"
  ];
  static List<String>belguim = [
    "Brussels", "Ghent"
  ];

  static List<Map<String, dynamic>> tonight = [
    {
      "pfp":"assets/images/clock.png",
      "username": "Andelyn Jun",
      "imgUrl": "assets/images/ban4.jpg",
      "comments": "3k",
      "likes": "55k",
      "title":
      "Sustainability in Action: The 2024 Global Environmental Leadership Conference on Climate Change, Renewable Energy, and Eco-Friendly Technologies",
      "date": "Mon, 27 Sept",
      "location": "Smirks",
      "price": "62",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Kain Mix",
      "imgUrl": "assets/images/ban1.jpg",
      "comments": "7k",
      "likes": "500",
      "title":
      "Transforming Education for the Digital Era: The 2nd International Summit on EdTech, Pedagogy, and 21st-Century Learning Skills",
      "date": "Mon, 27 Sept",
      "location": "Calacuta",
      "price": "52"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Smile bar",
      "imgUrl": "assets/images/ban2.jpg",
      "comments": "21k",
      "likes": "2k",
      "title":"Saturday Community Sip and Paint, Recovery Strategies for a Changing Climate",
      "date": "Mon, 27 Sept",
      "location": "Chrispie",
      "price": "34",
    "place":"Conference Hall",
    "direction":"Off Berger Street, Route 9, Conference Hall",
    "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Marylene moore",
      "imgUrl": "assets/images/ban3.jpg",
      "comments": "300",
      "likes": "55k",
      "title":
          "Party All Night Miami Cruise 3: The 2024 Miami Cruise for Blockchain, Cryptocurrency, and Fintech Innovations",
      "date": "Mon, 27 Sept",
      "location": "Phonox",
      "price": "35"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Jacuzzi Spin",
      "imgUrl": "assets/images/location.png",
      "comments": "3",
      "likes": "55",
      "title":
          "Celebrating Cultural Diversity: The 10th Anniversary Festival of Music, Dance, and Art from Around the World",
      "date": "Mon, 27 Sept",
      "location": "Mazona",
      "price": "17",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Chris notEvans",
      "imgUrl": "assets/images/ban5.jpg",
      "comments": "3.4k",
      "likes": "5k",
      "title":
          "Revolutionizing Healthcare: The International Conference on Artificial Intelligence, Machine Learning, and Medical Innovations in the Digital Age",
      "date": "Mon, 27 September",
      "location": "Maldives",
      "price": "35"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Maudib Kwitz",
      "imgUrl": "assets/images/ban6.PNG",
      "comments": "3.6k",
      "likes": "50k",
      "title":
          "DJ Mix Battle 2024: Youth Summit on Sustainable Development and Social Responsibility",
      "date": "Mon, 27 Sept",
      "location": "Rexone",
      "price": "95",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
  ];
  static List<Map<String, dynamic>> thisweek = [
    {
      "pfp":"assets/images/clock.png",
      "username": "Marylene moore",
      "imgUrl": "assets/images/ban3.jpg",
      "comments": "300",
      "likes": "55k",
      "title":
      "Party All Night Miami Cruise 3: The 2024 Miami Cruise for Blockchain, Cryptocurrency, and Fintech Innovations",
      "date": "Mon, 27 Sept",
      "location": "Phonox",
      "price": "77"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Jacuzzi Spin",
      "imgUrl": "assets/images/location.png",
      "comments": "3",
      "likes": "55",
      "title":
      "Celebrating Cultural Diversity: The 10th Anniversary Festival of Music, Dance, and Art from Around the World",
      "date": "Mon, 27 Sept",
      "location": "Mazona",
      "price": "17",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Chris notEvans",
      "imgUrl": "assets/images/ban5.jpg",
      "comments": "3.4k",
      "likes": "5k",
      "title":
      "Revolutionizing Healthcare: The International Conference on Artificial Intelligence, Machine Learning, and Medical Innovations in the Digital Age",
      "date": "Mon, 27 September",
      "location": "Maldives",
      "price": "35"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Maudib Kwitz",
      "imgUrl": "assets/images/ban6.PNG",
      "comments": "3.6k",
      "likes": "50k",
      "title":
      "DJ Mix Battle 2024: Youth Summit on Sustainable Development and Social Responsibility",
      "date": "Mon, 27 Sept",
      "location": "Rexone",
      "price": "95",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Andelyn Jun",
      "imgUrl": "assets/images/ban4.jpg",
      "comments": "3k",
      "likes": "55k",
      "title":
      "Sustainability in Action: The 2024 Global Environmental Leadership Conference on Climate Change, Renewable Energy, and Eco-Friendly Technologies",
      "date": "Mon, 27 Sept",
      "location": "Smirks",
      "price": "35"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Kain Mix",
      "imgUrl": "assets/images/ban1.jpg",
      "comments": "7k",
      "likes": "500",
      "title":
      "Transforming Education for the Digital Era: The 2nd International Summit on EdTech, Pedagogy, and 21st-Century Learning Skills",
      "date": "Mon, 27 Sept",
      "location": "Calacuta",
      "price": "52",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Smile bar",
      "imgUrl": "assets/images/ban2.jpg",
      "comments": "21k",
      "likes": "2k",
      "title":"Saturday Community Sip and Paint, Recovery Strategies for a Changing Climate",
      "date": "Mon, 27 Sept",
      "location": "Chrispie",
      "price": "34"
    },

  ];
  static List<Map<String, dynamic>> newevent = [
    {
      "pfp":"assets/images/clock.png",
      "username": "Smile bar",
      "imgUrl": "assets/images/ban2.jpg",
      "comments": "21k",
      "likes": "2k",
      "title":"Saturday Community Sip and Paint, Recovery Strategies for a Changing Climate",
      "date": "Mon, 27 Sept",
      "location": "Chrispie",
      "price": "34",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Jacuzzi Spin",
      "imgUrl": "assets/images/location.png",
      "comments": "3",
      "likes": "55",
      "title":
      "Celebrating Cultural Diversity: The 10th Anniversary Festival of Music, Dance, and Art from Around the World",
      "date": "Mon, 27 Sept",
      "location": "Mazona",
      "price": "17"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Chris notEvans",
      "imgUrl": "assets/images/ban5.jpg",
      "comments": "3.4k",
      "likes": "5k",
      "title":
      "Revolutionizing Healthcare: The International Conference on Artificial Intelligence, Machine Learning, and Medical Innovations in the Digital Age",
      "date": "Mon, 27 September",
      "location": "Maldives",
      "price": "35",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Marylene moore",
      "imgUrl": "assets/images/ban3.jpg",
      "comments": "300",
      "likes": "55k",
      "title":
      "Party All Night Miami Cruise 3: The 2024 Miami Cruise for Blockchain, Cryptocurrency, and Fintech Innovations",
      "date": "Mon, 27 Sept",
      "location": "Phonox",
      "price": "35"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Kain Mix",
      "imgUrl": "assets/images/ban1.jpg",
      "comments": "7k",
      "likes": "500",
      "title":
      "Transforming Education for the Digital Era: The 2nd International Summit on EdTech, Pedagogy, and 21st-Century Learning Skills",
      "date": "Mon, 27 Sept",
      "location": "Calacuta",
      "price": "52"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Maudib Kwitz",
      "imgUrl": "assets/images/ban6.PNG",
      "comments": "3.6k",
      "likes": "50k",
      "title":
      "DJ Mix Battle 2024: Youth Summit on Sustainable Development and Social Responsibility",
      "date": "Mon, 27 Sept",
      "location": "Rexone",
      "price": "95",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Andelyn Jun",
      "imgUrl": "assets/images/ban4.jpg",
      "comments": "3k",
      "likes": "55k",
      "title":
      "Sustainability in Action: The 2024 Global Environmental Leadership Conference on Climate Change, Renewable Energy, and Eco-Friendly Technologies",
      "date": "Mon, 27 Sept",
      "location": "Smirks",
      "price": "35"
    },
  ];
  static List<Map<String, dynamic>> popular = [
    {
      "pfp":"assets/images/clock.png",
      "username": "Chris notEvans",
      "imgUrl": "assets/images/ban5.jpg",
      "comments": "3.4k",
      "likes": "5k",
      "title":
      "Friday Hangout: Hangover Party for 9-5ers",
      "date": "Mon, 27 September",
      "location": "Maldives",
      "price": "20",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Smile bar",
      "imgUrl": "assets/images/ban2.jpg",
      "comments": "21k",
      "likes": "2k",
      "title":"Saturday Community Sip and Paint, Recovery Strategies for a Changing Climate",
      "date": "Mon, 27 Sept",
      "location": "Chrispie",
      "price": "61",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Kain Mix",
      "imgUrl": "assets/images/ban1.jpg",
      "comments": "7k",
      "likes": "500",
      "title":
      "Transforming Education for the Digital Era: The 2nd International Summit on EdTech, Pedagogy, and 21st-Century Learning Skills",
      "date": "Mon, 27 Sept",
      "location": "Calacuta",
      "price": "43"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Jacuzzi Spin",
      "imgUrl": "assets/images/location.png",
      "comments": "3",
      "likes": "55",
      "title":
      "Celebrating Cultural Diversity: The 10th Anniversary Festival of Music, Dance, and Art from Around the World",
      "date": "Mon, 27 Sept",
      "location": "Mazona",
      "price": "17",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Marylene moore",
      "imgUrl": "assets/images/ban3.jpg",
      "comments": "300",
      "likes": "55k",
      "title":
      "Party All Night Miami Cruise 3: The 2024 Miami Cruise for Blockchain, Cryptocurrency, and Fintech Innovations",
      "date": "Mon, 27 Sept",
      "location": "Phonox",
      "price": "35",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
    {
      "pfp":"assets/images/jlop.png",
      "username": "Maudib Kwitz",
      "imgUrl": "assets/images/ban6.PNG",
      "comments": "3.6k",
      "likes": "50k",
      "title":
      "DJ Mix Battle 2024: Youth Summit on Sustainable Development and Social Responsibility",
      "date": "Mon, 27 Sept",
      "location": "Rexone",
      "price": "95"
    },
    {
      "pfp":"assets/images/clock.png",
      "username": "Andelyn Jun",
      "imgUrl": "assets/images/ban4.jpg",
      "comments": "3k",
      "likes": "55k",
      "title":
      "Sustainability in Action: The 2024 Global Environmental Leadership Conference on Climate Change, Renewable Energy, and Eco-Friendly Technologies",
      "date": "Mon, 27 Sept",
      "location": "Smirks",
      "price": "35",
      "place":"Conference Hall",
      "direction":"Off Berger Street, Route 9, Conference Hall",
      "rating": "3.7"
    },
  ];

  static List<String> reports = [
    "Search history can't be seen",
    "Recent search history disappeared",
    "The suggested searches are not interesting or are not personalized",
    "The suggested searches have misspelling/grammar mistakes",
    "he suggested searches have illegal/unverified terms in them",
    "he suggested searches have inappropriate terms (explicit or sickening)",
    "Others",
  ];

  //static  List<Map<String, dynamic>> friends = [
  //     {
  //       "id":1,
  //     "imgUrl":"assets/images/f1.png",
  //     "name":"Nnaemeka Sidney",
  //     "username":"sidney",
  //     },
  //     {
  //       "id":1,
  //     "imgUrl":"assets/images/f1.png",
  //     "name":"Nnaemeka Sidney",
  //     "username":"sidney",
  //     },
  //     {
  //       "id":1,
  //     "imgUrl":"assets/images/f1.png",
  //     "name":"Nnaemeka Sidney",
  //     "username":"sidney",
  //     },
  //     {
  //       "id":1,
  //       "imgUrl":"assets/images/f1.png",
  //       "name":"Nnaemeka Sidney",
  //       "username":"sidney",
  //     },
  //     {
  //       "id":1,
  //       "imgUrl":"assets/images/f1.png",
  //       "name":"Nnaemeka Sidney",
  //       "username":"sidney",
  //     },
  //     {
  //       "id":1,
  //       "imgUrl":"assets/images/f1.png",
  //       "name":"Nnaemeka Sidney",
  //       "username":"sidney",
  //     },
  //     {
  //       "id":1,
  //       "imgUrl":"assets/images/f1.png",
  //       "name":"Nnaemeka Sidney",
  //       "username":"sidney",
  //     },
  //     {
  //       "id":1,
  //       "imgUrl":"assets/images/f1.png",
  //       "name":"Nnaemeka Sidney",
  //       "username":"sidney",
  //     },
  //     {
  //       "id":1,
  //       "imgUrl":"assets/images/f1.png",
  //       "name":"Nnaemeka Sidney",
  //       "username":"sidney",
  //     },
  //     {
  //       "id":1,
  //       "imgUrl":"assets/images/f1.png",
  //       "name":"Nnaemeka Sidney",
  //       "username":"sidney",
  //     },
  //   ];

  static List<Map<String, dynamic>> upcoming = [
    {"title": "Party or Party: All night, turn up and groove",
    "imgUrl":"assets/images/recwt.png",
    "pfp":"assets/images/f2.png",
    "username":"Magdala Max",
    "date":"2nd Mar, 2025"},
    {"title": "Mix monster: Clubon users meet up",
      "imgUrl":"assets/images/recdj.png",
      "pfp":"assets/images/f4.png",
      "username":"Qing June",
      "date":"15th Oct, 2025"},
  ];
  static List<Map<String, dynamic>> past = [
    {"title": "Saturday Sip and Paint: Community sip and paint party",
      "imgUrl":"assets/images/ban3.jpg",
      "pfp":"assets/images/f1.png",
      "username":"Carllinaeus Mike",
      "date":"2nd Jun, 2024"},
    {"title": "Queens and Kings: Royalty all night party",
      "imgUrl":"assets/images/ban5.jpg",
      "pfp":"assets/images/f3.png",
      "username":"Kenneth Chigozie",
      "date":"12 May, 2024"},
  ];

  static List<Map<String, dynamic>> donations = [
    {
      "id":1,
      "imgUrl":"assets/images/jlop.png",
      "total":"2,500",
      "gave":"225",
      "username":"jnotlop",
    },
    {
      "id":2,
      "imgUrl":"assets/images/clock.png",
      "total":"500",
      "gave":"205",
      "username":"mash",
    },
    {
      "id":3,
      "imgUrl":"assets/images/f1.png",
      "total":"200",
      "gave":"25",
      "username":"millicentbrad",
    },
    {
      "id":4,
      "imgUrl":"assets/images/f2.png",
      "total":"440",
      "gave":"5",
      "username":"evenwa",
    },
    {
      "id":5,
      "imgUrl":"assets/images/f3.png",
      "total":"467",
      "gave":"12",
      "username":"sidney",
    },
    {
      "id":6,
      "imgUrl":"assets/images/f4.png",
      "total":"500",
      "gave":"314",
      "username":"user276727276828297927",
    },
    {
      "id":7,
      "imgUrl":"assets/images/f5.png",
      "total":"900",
      "gave":"10",
      "username":"ucee",
    },
    {
      "id":8,
      "imgUrl":"assets/images/f1.png",
      "total":"939",
      "gave":"132",
      "username":"malachysteve",
    },
    {
      "id":9,
      "imgUrl":"assets/images/jlop.png",
      "total":"9,000",
      "gave":"331",
      "username":"msquared",
    },
    {
      "id":10,
      "imgUrl":"assets/images/f4.png",
      "total":"1,000",
      "gave":"890",
      "username":"zeezeebby",
    },
  ];


}
