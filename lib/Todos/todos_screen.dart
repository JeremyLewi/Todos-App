import 'package:flutter/material.dart';
import 'package:todos_application/Todos/component/button.dart';
import 'package:todos_application/Todos/component/category.dart';
import 'package:todos_application/Todos/component/date_field.dart';
import 'package:todos_application/Todos/component/date_group.dart';
import 'package:todos_application/Todos/component/text_field.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({Key? key, required String title}) : super(key: key);

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          title: const Text('Todos'),
        ),
        body: Container(
          width: 428,
          height: 926,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Icon(
                        Icons.list_alt_rounded,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Kegiatan',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                        child: CustomTF(
                            hintText: 'Judul Kegiatan',
                            maxLines: 1,
                            padding: EdgeInsets.all(30)),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Icon(
                            Icons.format_align_left,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Text(
                            'Keterangan',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(40, 10, 30, 0),
                    child: CustomTF(
                        hintText: 'Tambah Keterangan',
                        maxLines: 3,
                        padding: EdgeInsets.all(40)),
                  ),
                ],
              ),
              const DateGroup(),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      height: 50,
                      decoration: const BoxDecoration(),
                      child:
                          // here we make a component
                          const DateField(),
                    ),
                    Container(
                        width: 150,
                        height: 50,
                        decoration: const BoxDecoration(),
                        child: const DateField()),
                  ],
                ),
              ),
              Category(),
              CustomButton()
            ],
          ),
        ));
  }
}
