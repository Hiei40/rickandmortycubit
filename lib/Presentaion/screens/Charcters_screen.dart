import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmortycubit/Constans/my_colors.dart';
import '../../Bussines_logic/Cubit/characters_cubit.dart';
import '../../data/models/charcters.dart';
import '../widgets/charcter_item.dart'; // corrected import path
class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersLoaded) {
          return buildLoadedListWidgets(state.characters);
        } else {
          return showLoadingIndicator();
        }
      },
    );
  }

  Widget showLoadingIndicator() {
    return Center(
      child: CircularProgressIndicator(
        color: Mycolors.myYellow,
      ),
    );
  }

  Widget buildLoadedListWidgets(List<Character> characters) {
    return SingleChildScrollView(
      child: Container(
        color: Mycolors.mygrey,
        child: buildCharactersList(characters),
      ),
    );
  }

  Widget buildCharactersList(List<Character> characters) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: characters.length,
      itemBuilder: (ctx, index) {
        return  CharcterItem(character: characters[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mycolors.myYellow,
        title: Text(
          "Characters",
          style: TextStyle(color: Mycolors.mygrey),
        ),
      ),
      body: buildBlocWidget(),
    );
  }
}