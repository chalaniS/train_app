import 'package:flutter/material.dart';
import 'searchResultPage.dart';

class SearchTrain extends StatefulWidget {
  const SearchTrain({Key? key}) : super(key: key);

  @override
  State<SearchTrain> createState() => _SearchTrainState();
}

class _SearchTrainState extends State<SearchTrain> {

  final _formKey = GlobalKey<FormState>();

  Widget _buildFromField(){
      return Column(
        children: [
          const Text(
              'From: ',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
          ),
          TextFormField(
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
              decoration:  InputDecoration(
                filled: true,
                prefixIcon: const Icon(
                  Icons.location_on_outlined,
                  color: Color(0xFFF000000),
                ),
                fillColor: const Color(0xFFAEDBDA),
                hintText: 'Awukana',
                hintStyle:  const TextStyle(
                  color: Color(0xFF447574),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide:  const BorderSide(color: Colors.white),
                  borderRadius:  BorderRadius.circular(25.7),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide:  const BorderSide(color: Colors.white),
                  borderRadius:  BorderRadius.circular(25.7),
                ),
              ),
            ),
        ],
      );
    }

  Widget _buildToField(){
    return Column(
      children: [
        const Text(
          'To : ',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        TextFormField(
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
          decoration:  InputDecoration(
            filled: true,
            prefixIcon: const Icon(
              Icons.location_on_outlined,
              color: Color(0xFFF000000),
            ),
            fillColor: const Color(0xFFAEDBDA),
            hintText: 'Kurunagala',
            hintStyle:  const TextStyle(
              color: Color(0xFF447574),
            ),

            focusedBorder: OutlineInputBorder(
              borderSide:  const BorderSide(color: Colors.white),
              borderRadius:  BorderRadius.circular(25.7),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide:  const BorderSide(color: Colors.white),
              borderRadius:  BorderRadius.circular(25.7),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateField(){
    return Column(
      children: [
        const Text(
          'Date : ',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
        ),

        TextFormField(
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
          decoration:  InputDecoration(
            filled: true,
            prefixIcon: const Icon( 
                Icons.calendar_today,
                color: Color(0xFFF000000),
            
            ),
            fillColor: const Color(0xFFAEDBDA),
            hintText: 'DD/MM/YY',
            hintStyle:  const TextStyle(
              color: Color(0xFF447574),
            ),

            focusedBorder: OutlineInputBorder(
              borderSide:  const BorderSide(color: Colors.white),
              borderRadius:  BorderRadius.circular(25.7),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide:  const BorderSide(color: Colors.white),
              borderRadius:  BorderRadius.circular(25.7),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildElevatedButtonField(){
    return ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState?.save();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchResult()),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFFF042727),
          padding: const EdgeInsets.only(
            top: 5,
            bottom: 5,
            left: 30,
            right: 30,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),

        child: const Text(
          'Search',
          style: TextStyle(            
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
  }

  Widget _buildSearchTrain(){
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF006E6C),
        borderRadius: BorderRadius.all(
            Radius.circular(40)
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  Icon( Icons.search,
                  color: Colors.white),
                  Text(
                    'Search Trains',
                     style: TextStyle(
                        fontSize: 30,
                       color: Colors.white,
                   ),
                  ),
                ],
              ),
            _buildFromField(),
            _buildToField(),
            _buildDateField(),
            _buildElevatedButtonField(),

          ],
        ),
      ),
    );
  }

  Widget _buildTrainInfor(){
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        bottom: 30,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF006E6C),
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 8,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SearchResult()),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.train,
                size: 40,
              ),
              Text(
                  '\tStation Infor',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNotifications(){
    return Padding(
      padding: const EdgeInsets.only(
        top: 6,
        bottom: 20,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF006E6C),
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 8,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SearchResult()),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.notifications,
                size: 40,
              ),
              Text(
                '\tNotification',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFavouriteTrains(String trainName, String start, String End){
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration:  const BoxDecoration(
          color: Color(0xFFAEDBDA),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(
                  Icons.favorite,
                  size: 30,
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.train,
                  size: 65,
                ),
                Text(
                  trainName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Text(
              "$start \n$End",
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF333232),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFavourite(){
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 30,
      ),
      child: Container(
          decoration: const BoxDecoration(
              color: Color(0xFF006E6C),
              borderRadius: BorderRadius.all(
                Radius.circular(40)
              ),
            ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.favorite,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text(
                      '\tFavourite',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: Row(
                  children: [
                    _buildFavouriteTrains('Pulathisi \nIntercity', '6075 (Colombo to Batticaloa)', '6076 (Batticaloa to Colombo)'),
                    _buildFavouriteTrains('The Ella \nObyssey', '1041  (Colombo Fort to Badulla)', '1042 (Badulla to Colombo Fort)'),
                    _buildFavouriteTrains('Pulathisi \nIntercity', '6075 (Colombo to Batticaloa)', '6076 (Batticaloa to Colombo)'),
                    _buildFavouriteTrains('The Ella \nObyssey', '1041  (Colombo Fort to Badulla)', '1042 (Badulla to Colombo Fort)'),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        top: 30,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/getStart.jpg"),
          fit:BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: const Color(0xFF000000).withOpacity(0.5),
        appBar: AppBar(
         backgroundColor: Colors.transparent,
         elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Column(
                children:  [
                  _buildSearchTrain(),
                  _buildTrainInfor(),
                  _buildNotifications(),
                  _buildFavourite(),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
