import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmortycubit/Constans/my_colors.dart';
import '../../Bussines_logic/Cubit/characters_cubit.dart';
import '../../data/models/charcters.dart';
import '../widgets/charcter_item.dart'; // corrected import path
class CharctersScreen extends StatefulWidget {
  const CharctersScreen({Key? key}) : super(key: key);

  @override
  State<CharctersScreen> createState() => _CharctersScreenState();
}

class _CharctersScreenState extends State<CharctersScreen> {
  late List<Character> allCharacters;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }


  Widget buildBlocWidget() {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersLoaded) {
          allCharacters = state.characters;
          return buildLoadedListWidgets();
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

  Widget buildLoadedListWidgets() {
    return SingleChildScrollView(
      child: Container(
        color: Mycolors.mygrey,
        child: buildCharactersList(),
      ),
    );
  }

  Widget buildCharactersList() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: allCharacters.length,
      itemBuilder: (ctx, index) {
        return CharcterItem(character: allCharacters[index]);
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