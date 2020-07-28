import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  //Страница создания поста
  createPost(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text('Создание'),
          ),
          body: Center(
            child: Text(
              'создание',
              style: TextStyle(fontSize: 24),
            ),
          ),
        );
      },
    ));
  }

  //Страница настроек
  settings(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text('Настройки'),
          ),
          body: Center(
            child: Text(
              'настройки',
              style: TextStyle(fontSize: 24),
            ),
          ),
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Table(
        children: [
          TableRow(children: [
            Container(
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.top,
                children: [
                  TableRow(children: [
                    ListTile(
                      title: Text(
                        'Профиль',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(),
                  ]),
                  TableRow(children: [
                    Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://sun1-21.userapi.com/Mct4MXBLi6GrMNdmPrwH0jZkMNqwNWdAss3k8Q/RjNuGDrSf0Q.jpg'),
                      ),
                    ),
                    Container(
                      child: Table(children: [
                        TableRow(children: [
                          IconButton(
                            iconSize: 65,
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.pink,
                            ),
                            onPressed: null,
                          ),
                        ]),
                        TableRow(children: [
                          Center(child: Text('Пожертвовать')),
                        ]),
                      ]),
                    ),
                  ]),
                  TableRow(children: [
                    ListTile(
                      title: Text(
                        'Имя',
                      ),
                    ),
                    Container(),
                  ]),
                ],
              ),
              color: Theme.of(context).primaryColor,
              height: 210,
            )
          ]),
          TableRow(children: [
            ListTile(
              title: Text('Создать пост'),
              leading: Icon(Icons.create),
              onTap: () {
                createPost(context);
              },
            ),
          ]),
          TableRow(children: [
            ListTile(
              title: Text('Найстройки'),
              leading: Icon(Icons.settings),
              onTap: () {
                settings(context);
              },
            ),
          ]),
          TableRow(children: [
            ListTile(
              title: Text('Выход'),
              leading: Icon(Icons.close),
            ),
          ]),
        ],
      ),
    );
  }
}
