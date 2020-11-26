import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:weight_app/my_page/my_page_notifier.dart';

//providerを使うときは基本statelessだよ
//何のためにproviderを使っているのかを理解してたらわかるよね？
class MyPage extends StatelessWidget {
  MyPage._({Key key}) : super(key: key);

//wrappedがあればwidget build内以外で使える
//これってグローバルとして使える？？？？？
  static Widget wrapped() {
    return MultiProvider(providers: [
      StateNotifierProvider<MyPageNotifier, MyPageState>(
        create: (context) => MyPageNotifier(
          context: context,
        ),
      )
    ], child: MyPage._());
  }

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<MyPageNotifier>();
    final count = context.select((MyPageState state) => state.count);
    return Scaffold(
        appBar: AppBar(
          title: Text('日々の体重を追加していくアプリ'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            icon: const Icon(
              Icons.add,
              size: 24,
              color: Colors.white,
            ),
            onPressed: () {
              notifier.popUpForm();
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          SizedBox(
              height: MediaQuery.of(context).size.height - 200,
              child: Builder(builder: (BuildContext context) {
                final records =
                    context.select((MyPageState state) => state.record);
                return ListView.builder(
                    itemCount: records.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 100,
                          margin: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(10, 10),
                              ),
                            ],
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 12),
                              width: 100,
                              child: Text(
                                records[index]['weight'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                            Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 24,
                                          child: Icon(Icons.calendar_today),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          records[index]['day'],
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(children: [
                                    SizedBox(
                                      width: 24,
                                      child: Icon(Icons.comment),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(records[index]['comment'],
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ))
                                  ])
                                ]))
                          ]));
                    });
              }))
        ]))));
  }
}
