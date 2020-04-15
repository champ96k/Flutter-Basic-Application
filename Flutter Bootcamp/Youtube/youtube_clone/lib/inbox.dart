import 'package:flutter/material.dart';

class inbox extends StatefulWidget {
  @override
  _inboxState createState() => _inboxState();
}

class _inboxState extends State<inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(6.5),
            child: Image(
              image: AssetImage("images/pic2.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 104),
            child: IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {},
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 67,
                width: 67,   
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.collegesearch.in/upload/institute/images/large/131106110233_54.jpg"),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 166, 
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4), 
                          child: Text("Google Developer Updated: DSC Soluction Challange- How to identfy a problem"),
                        ),
                      ],
                    ), 
                  ),
                  Container(
                    height:20  ,
                    width: 166, 
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text("7 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 68, 
                width:99,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://image.winudf.com/v2/image/Y29tLnB5dG9uZWRzZmpzZGxzZGxmZXIuZmVydmZzZGZld3Jld2ZzZGZfc2NyZWVuXzZfMTUyNTgzOTg0M18wMDM/screen-6.jpg?fakeurl=1&type=.jpg"),
                    ),
                )
              ),

           Icon(Icons.more_vert)
            ],
          ),

          SizedBox(
            height: 12,
          ),
         


          Row(
            children: <Widget>[
              Container(
                height: 67,
                width: 67,   
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.collegesearch.in/upload/institute/images/large/131106110233_54.jpg"),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 167,
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4), 
                          child: Text("Google Developer Updated: DSC Soluction Challange- How to identfy a problem"),
                        ),
                      ],
                    ), 
                  ),
                  Container(
                    height:20  ,
                    width: 167, 
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text("7 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                width:99,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://image.winudf.com/v2/image/Y29tLnB5dG9uZWRzZmpzZGxzZGxmZXIuZmVydmZzZGZld3Jld2ZzZGZfc2NyZWVuXzZfMTUyNTgzOTg0M18wMDM/screen-6.jpg?fakeurl=1&type=.jpg"),
                    ),
                )
              ),

            Icon(Icons.more_vert)
            ],
          ),


           SizedBox(
            height: 12,
          ),


          Row(
            children: <Widget>[
              Container(
                height: 67,
                width: 67,   
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.collegesearch.in/upload/institute/images/large/131106110233_54.jpg"),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 167,
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4), 
                          child: Text("Google Developer Updated: DSC Soluction Challange- How to identfy a problem"),
                        ),
                      ],
                    ), 
                  ),
                  Container(
                    height:20  ,
                    width: 167, 
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text("7 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                width:99,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.ytimg.com/vi/AGig11PAMSY/maxresdefault.jpg"),
                    ),
                )
              ),

            Icon(Icons.more_vert)
            ],
          ),


           SizedBox(
            height: 12,
          ),



          Row(
            children: <Widget>[
              Container(
                height: 67,
                width: 67,   
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.collegesearch.in/upload/institute/images/large/131106110233_54.jpg"),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 167,
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4), 
                          child: Text("Google Developer Updated: DSC Soluction Challange- How to identfy a problem"),
                        ),
                      ],
                    ), 
                  ),
                  Container(
                    height:20  ,
                    width: 167, 
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text("7 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                width:99,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://image.winudf.com/v2/image/Y29tLnB5dG9uZWRzZmpzZGxzZGxmZXIuZmVydmZzZGZld3Jld2ZzZGZfc2NyZWVuXzZfMTUyNTgzOTg0M18wMDM/screen-6.jpg?fakeurl=1&type=.jpg"),
                    ),
                )
              ),

             Icon(Icons.more_vert)
            ],
          ),


           SizedBox(
            height: 12,
          ),



          Row(
            children: <Widget>[
              Container(
                height: 67,
                width: 67,   
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.collegesearch.in/upload/institute/images/large/131106110233_54.jpg"),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 167,
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4), 
                          child: Text("Google Developer Updated: DSC Soluction Challange- How to identfy a problem"),
                        ),
                      ],
                    ), 
                  ),
                  Container(
                    height:20  ,
                    width: 167, 
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text("7 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                width:99,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://www.careermatch.com/job-prep/wp-content/uploads/sites/29/2018/09/developer-525x350.jpg"),
                    ),
                )
              ),

             Icon(Icons.more_vert)
            ],
          ),


           SizedBox(
            height: 12,
          ),


          Row(
            children: <Widget>[
              Container(
                height: 67,
                width: 67,   
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.collegesearch.in/upload/institute/images/large/131106110233_54.jpg"),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 167,
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4), 
                          child: Text("Google Developer Updated: DSC Soluction Challange- How to identfy a problem"),
                        ),
                      ],
                    ), 
                  ),
                  Container(
                    height:20  ,
                    width: 167, 
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text("7 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                width:99,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://www.careermatch.com/job-prep/wp-content/uploads/sites/29/2018/09/developer-525x350.jpg"),
                    ),
                )
              ),

            Icon(Icons.more_vert)
            ],
          ),

           SizedBox(
            height: 12,
          ),

          Row(
            children: <Widget>[
              Container(
                height: 67,
                width: 67,   
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.collegesearch.in/upload/institute/images/large/131106110233_54.jpg"),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 167,
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4), 
                          child: Text("Google Developer Updated: DSC Soluction Challange- How to identfy a problem"),
                        ),
                      ],
                    ), 
                  ),
                  Container(
                    height:20  ,
                    width: 167, 
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text("7 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                width:99,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.ytimg.com/vi/AGig11PAMSY/maxresdefault.jpg"),
                    ),
                )
              ),

            Icon(Icons.more_vert)
            ],
          ),

           SizedBox(
            height: 12,
          ),


          Row(
            children: <Widget>[
              Container(
                height: 67,
                width: 67,   
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.collegesearch.in/upload/institute/images/large/131106110233_54.jpg"),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 167,
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4), 
                          child: Text("Google Developer Updated: DSC Soluction Challange- How to identfy a problem"),
                        ),
                      ],
                    ), 
                  ),
                  Container(
                    height:20  ,
                    width: 167, 
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text("7 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                width:99,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://www.careermatch.com/job-prep/wp-content/uploads/sites/29/2018/09/developer-525x350.jpg"),
                    ),
                )
              ),

            Icon(Icons.more_vert)
            ],
          ),


           SizedBox(
            height: 12,
          ),



          Row(
            children: <Widget>[
              Container(
                height: 67,
                width: 67,   
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.collegesearch.in/upload/institute/images/large/131106110233_54.jpg"),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 167,
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4), 
                          child: Text("Google Developer Updated: DSC Soluction Challange- How to identfy a problem"),
                        ),
                      ],
                    ), 
                  ),
                  Container(
                    height:20  ,
                    width: 167, 
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text("7 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                width:99,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://insights.dice.com/wp-content/uploads/2016/03/shutterstock_374227048.jpg"),
                    ),
                )
              ),

            Icon(Icons.more_vert)
            ],
          ),


           SizedBox(
            height: 12,
          ),


          Row(
            children: <Widget>[
              Container(
                height: 67,
                width: 67,   
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.collegesearch.in/upload/institute/images/large/131106110233_54.jpg"),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 167,
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4), 
                          child: Text("Google Developer Updated: DSC Soluction Challange- How to identfy a problem"),
                        ),
                      ],
                    ), 
                  ),
                  Container(
                    height:20  ,
                    width: 167, 
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text("7 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                width:99,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://www.simplilearn.com/ice9/free_resources_article_thumb/tester-or-developer-what-suits-you-the-most.jpg"),
                    ),
                )
              ),

            Icon(Icons.more_vert)
            ],
          ),


           SizedBox(
            height: 12,
          ),



          Row(
            children: <Widget>[
              Container(
                height: 67,
                width: 67,   
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.simplilearn.com/ice9/free_resources_article_thumb/tester-or-developer-what-suits-you-the-most.jpg"),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 167,
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4), 
                          child: Text("Google Developer Updated: DSC Soluction Challange- How to identfy a problem"),
                        ),
                      ],
                    ), 
                  ),
                  Container(
                    height:20  ,
                    width: 167, 
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text("7 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                width:99,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://tr3.cbsistatic.com/hub/i/r/2019/08/19/7781cd15-d512-4163-a8f3-c65420e920b9/resize/1200x/8405af53f69396b77bed9b10c212dc7b/istock-1147195672-1.jpg"),
                    ),
                )
              ),

            Icon(Icons.more_vert)
            ],
          ),

           SizedBox(
            height: 12,
          ),


          Row(
            children: <Widget>[
              Container(
                height: 67,
                width: 67,   
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("http://briofinancial.com/wp-content/uploads/2017/03/5-things-developers-dont-share-about-making-successful-apps.jpeg"),
                  ),
                )
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 50, 
                    width: 167,
                    child: Wrap(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4), 
                          child: Text("Google Developer Updated: DSC Soluction Challange- How to identfy a problem"),
                        ),
                      ],
                    ), 
                  ),
                  Container(
                    height:20  ,
                    width: 167, 
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Text("7 hours ago",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.5,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                width:99,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://www.publicjobs.ie/images/news_and_events/Office.jpg"),
                    ),
                )
              ),

            Icon(Icons.more_vert)
            ],
          ),

           SizedBox(
            height: 12,
          ),

  
    
        ],
       )
      );    
  }
}