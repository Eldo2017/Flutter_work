void main() {
  List<String> NW = ['시온','리쿠','유우시','재희','료','사쿠야','정민'];
  print(NW);
  print(NW.asMap());
  print(NW.toSet());

  // List -> Map
  Map NWMap = NW.asMap();
  print(NWMap.keys);
  print(NWMap.values);

  // Map -> List
  print(NWMap.keys.toList());
  print(NWMap.values.toList());

  // List -> Set
  Set NWSet = NW.toSet();
  print(NWSet);

  // 함수 사용
  NWSet = Set.from(NW);
  print(NWSet);

  // Set -> List
  print(NWSet.toList());
}