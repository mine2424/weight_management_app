import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'my_page_notifier.freezed.dart';

@freezed
abstract class MyPageState with _$MyPageState {
  const factory MyPageState({
    @Default(0) int count,
    String weight,
    String comment,
    @Default([]) List<Map<String, String>> record,
  }) = _MyPageState;
}

class MyPageNotifier extends StateNotifier<MyPageState> with LocatorMixin {
  MyPageNotifier({
    @required this.context,
  }) : super(const MyPageState());

  final BuildContext context;

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  void initState() {}

  void pushButton() {
    state = state.copyWith(count: state.count + 1);
  }

  void popUpForm() {
    showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              title: Text('今日の体重を入力しよう'),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
              children: [
                Row(
                  children: [
                    Container(
                      width: 200,
                      padding: EdgeInsets.only(left: 4),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '嘘つくなよ',
                            labelText: '今日の体重'),
                        onChanged: (input) {
                          _saveWeight(input);
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('Kg'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  padding: EdgeInsets.only(left: 4),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '後悔先に立たず',
                        labelText: '懺悔の一言'),
                    onChanged: (input) {
                      _saveComment(input);
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '登録',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: () {
                    _register();
                  },
                )
              ],
            ));
  }

  void _register() {
    //連想配列を定義しよう！！！
    final formRecord = {
      'weight': state.weight,
      'comment': state.comment,
      'day': DateTime.now().toString(),
    };
    //配列を新規作成
    final newRecord = List<Map<String, String>>.from(state.record);
    //formRecordをfirebaseに送れば今まで通りOK!!!
    print(formRecord);
    //saveした配列を追加
    newRecord.add(formRecord);
    //stateに保存する
    state = state.copyWith(record: newRecord);
    Navigator.pop(context);
  }

  _saveComment(input) {
    state = state.copyWith(comment: input);
  }

  _saveWeight(input) {
    state = state.copyWith(weight: input);
  }
}
