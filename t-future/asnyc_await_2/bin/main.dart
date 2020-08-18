//bug
import 'dart:async';
void main(){

}
Future<int> _loadFromDisk(){

}
Future<String> _fetchNetworkData(int id){

}

class ProcessedData{
  ProcessedData(this.data);
  final String data;
}

Future<ProcessedData> createData() async{
  final id= await _loadFromDisk();
  final data = await _fetchNetworkData(id);
  return ProcessedData(data);
}