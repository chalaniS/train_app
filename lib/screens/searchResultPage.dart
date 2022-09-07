import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {

  Widget _buildFromField(){
    return Column(
      children:  [
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
                prefixIcon: const Icon(Icons.location_on_outlined),
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
            prefixIcon: const Icon(Icons.location_on_outlined),
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
            prefixIcon: const Icon(Icons.calendar_today_rounded),
            fillColor: const Color(0xFFAEDBDA),
            hintText: '03/09/22',
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

  Widget _buildInputs(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFromField(),
        _buildToField(),
        _buildDateField(),
      ],
    );
  }

  Widget _buildAvailableTrainResult(String trainName, String endTime, bool favorite){
     if(favorite) {
       return Padding(
         padding: const EdgeInsets.only(
           top: 30,
         ),
         child: Container(
         //  height: 90,
           padding: const EdgeInsets.all(7),
           decoration: BoxDecoration(
             color: const Color(0xFF66DE95),
             borderRadius: const BorderRadius.all(Radius.circular(40)),
             border: Border.all(
               width: 2,
               color: const Color(0xFF095E2B),
             ),
           ),
           child:Row(
                 children: [
                   const Padding(
                     padding: EdgeInsets.only(
                       right: 20,
                     ),
                     child: Icon(
                       Icons.train,
                       size: 40,
                     ),
                   ),
                   SizedBox(
                     width: 200,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           trainName,
                           style: const TextStyle(
                             fontWeight: FontWeight.w600,
                             fontSize: 17,
                           ),
                         ),
                         Row(
                           children: const [
                             Icon(
                               Icons.group,
                               color: Color(0xFF00B612),
                             ),
                             Text(
                               '\t\tArrival Now',
                               style: TextStyle(
                                 fontSize: 15,
                               ),
                             ),
                           ],
                         ),
                         Text(
                           '\t\t\t\t\t\t\tEnd Time - $endTime',
                           style: const TextStyle(
                             fontSize: 15,
                           ),
                         ),
                       ],
                     ),
                   ),
                   const Icon(
                     Icons.favorite,
                     size: 30,
                   ),
                 ],
               ),

         ),
       );
     }
     else{
       return Padding(
         padding: const EdgeInsets.only(
           top: 30,
         ),
         child: Container(
           height: 90,
           padding: const EdgeInsets.all(7),
           decoration: BoxDecoration(
           color: const Color(0xFFAEF4FE),
           borderRadius: const BorderRadius.all(Radius.circular(40)),
           border: Border.all(
           width: 2,
           color: const Color(0xFF5073B9),
             ),
           ),
           child:  Row(
                 children:  [
                   const Padding(
                     padding: EdgeInsets.only(
                       right: 20,
                     ),
                     child: Icon(
                       Icons.train,
                       size: 40,
                     ),
                   ),
                   SizedBox(
                     width: 200,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:  [
                         Text(
                           trainName,
                           style: const TextStyle(
                             fontWeight: FontWeight.w600,
                             fontSize: 17,
                           ),
                         ),
                         Row(
                           children:  const [
                             Icon(
                               Icons.group,
                               color: Color(0xFF00B612),
                             ),
                             Text(
                               '\t\tArrival Now',
                               style: TextStyle(
                                 fontSize: 15,
                               ),
                             ),
                           ],
                         ),
                         Text(
                           '\t\t\t\t\t\t\tEnd Time - $endTime',
                           style: const TextStyle(
                             fontSize: 15,
                           ),
                         ),
                       ],
                     ),
                   ),
                   const Icon(
                     Icons.favorite_border_outlined,
                     size: 30,
                   ),
                 ],
               ),
         ),

       );
    }
  }

  Widget _buildUnavailableTrainResult(String trainName, String arrivalTime, String endTime){
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Container(
        height: 90,
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: const Color(0xFF777777),
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          border: Border.all(
            width: 2,
          ),
        ),
        child: Row(
          children:  [
            const Padding(
              padding: EdgeInsets.only(
                right: 20,
              ),
              child: Icon(
                Icons.train,
                size: 40,
              ),
            ),
            SizedBox(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    trainName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                  Row(
                    children:   [
                      const Icon(
                        Icons.group,
                        color: Color(0xFFF80505),
                      ),
                      Text(
                        '\t\tArrival Time - $arrivalTime',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\t\t\t\t\t\t\t\tEnd Time - $endTime',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.favorite_border_outlined,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/searchPage.JPG"),
          fit:BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF5D5A5A).withOpacity(0.9),

        ),

        body:SingleChildScrollView(
          child: Container(
              color: const Color(0xFF5D5A5A).withOpacity(0.9),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  _buildInputs(),
                  _buildAvailableTrainResult('Udaya Devi - 6011 ', '10.00 am', true),
                  _buildAvailableTrainResult('Udaya Devi - 6011 ', '10.00 am', false),
                  _buildUnavailableTrainResult('Pulathisi Intercity - 6076 ','05.24 am', '7.00 am'),
                  _buildUnavailableTrainResult('Uttara Devi - 4017', '05.24 am', '07.00 am'),
                  _buildUnavailableTrainResult('Uttara Devi - 4017', '05.24 am', '07.00 am'),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
