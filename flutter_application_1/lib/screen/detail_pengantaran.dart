import 'package:flutter/material.dart';
import 'pengantaran.dart';

class DetailPengantaranScreen extends StatefulWidget {
  const DetailPengantaranScreen({Key? key}) : super(key: key);

  @override
  _DetailPengantaranScreenState createState() =>
      _DetailPengantaranScreenState();
}

class _DetailPengantaranScreenState extends State<DetailPengantaranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Center(
            child: Text('Pengantaran'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Card(
                color: Colors.grey[350],
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          'Nomor Order',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Driver',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Driver Name'),
                    ),
                    ListTile(
                      title: Text(
                        'Jenis Kendaraan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Nama Kendaraan'),
                    ),
                    ListTile(
                      title: Text(
                        'Nomor Plat',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Nomor'),
                    ),
                    ListTile(
                      title: Text(
                        'Jenis Barang',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Barang'),
                    ),
                    ListTile(
                      title: Text(
                        'Alamat Asal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Alamat'),
                    ),
                    ListTile(
                      title: Text(
                        'Alamat Tujuan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Alamat'),
                    ),
                    ListTile(
                      title: Text(
                        'Tanggal Pengantaran',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Tanggal'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const PengantaranStartScreenScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Start'),
              ),
            ],
          ),
        ));
  }
}
