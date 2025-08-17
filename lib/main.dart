import 'package:app/const.dart';
import 'package:app/cubits/add_note/add_note_cubit.dart';
import 'package:app/models/note_model.dart';
import 'package:app/simple_bloc_observer.dart';
import 'package:app/views/notes_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(Knotesbox);

  runApp(const notes_app());

  // Hive.deleteBoxFromDisk(Knotesbox)  ;
}

class notes_app extends StatelessWidget {
  const notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        theme: ThemeData(
          //scaffoldBackgroundColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        home: NotesView(),
      ),
    );
  }
}
