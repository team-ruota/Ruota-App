import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/catering_inquiry_provider.dart';
import 'screens/catering_inquiry_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CateringInquiryProvider()),
      ],
      child: MaterialApp(
        title: 'Ruota Coffee',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        ),
        home: const MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    CoffeeListPage(),
    CateringInquiryListPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: '메뉴',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: '케이터링 문의',
          ),
        ],
      ),
    );
  }
}

class Coffee {
  final String name;
  final String description;
  final int price;
  final IconData icon;

  const Coffee({
    required this.name,
    required this.description,
    required this.price,
    required this.icon,
  });
}

class CoffeeListPage extends StatelessWidget {
  const CoffeeListPage({super.key});

  static const List<Coffee> coffeeList = [
    Coffee(
      name: '아메리카노',
      description: '깊고 진한 에스프레소에 물을 더해 부드럽게',
      price: 4500,
      icon: Icons.coffee,
    ),
    Coffee(
      name: '카페 라떼',
      description: '에스프레소와 부드러운 우유의 조화',
      price: 5000,
      icon: Icons.local_cafe,
    ),
    Coffee(
      name: '카푸치노',
      description: '풍성한 우유 거품과 에스프레소',
      price: 5000,
      icon: Icons.emoji_food_beverage,
    ),
    Coffee(
      name: '바닐라 라떼',
      description: '달콤한 바닐라 시럽이 들어간 라떼',
      price: 5500,
      icon: Icons.local_cafe,
    ),
    Coffee(
      name: '카라멜 마키아토',
      description: '카라멜 소스와 바닐라 시럽의 달콤함',
      price: 5500,
      icon: Icons.coffee_maker,
    ),
    Coffee(
      name: '콜드브루',
      description: '차갑게 오랜 시간 우려낸 커피',
      price: 5000,
      icon: Icons.water_drop,
    ),
    Coffee(
      name: '에스프레소',
      description: '진하고 강렬한 커피 원액',
      price: 3500,
      icon: Icons.coffee,
    ),
    Coffee(
      name: '아포가토',
      description: '바닐라 아이스크림 위에 에스프레소',
      price: 6000,
      icon: Icons.icecream,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Ruota Coffee'),
      ),
      body: ListView.builder(
        itemCount: coffeeList.length,
        itemBuilder: (context, index) {
          final coffee = coffeeList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown.shade100,
                child: Icon(coffee.icon, color: Colors.brown),
              ),
              title: Text(
                coffee.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(coffee.description),
              trailing: Text(
                '${coffee.price}원',
                style: TextStyle(
                  color: Colors.brown.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${coffee.name} 선택됨')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
