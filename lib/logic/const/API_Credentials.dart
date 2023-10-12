// ignore_for_file: camel_case_types,file_names

class Secret_PROFILE {
  final String authId;
  final String apiDomain;
  Secret_PROFILE({required this.authId, required this.apiDomain});
}

abstract class Secret_Credentials {
  static Secret_PROFILE get productsSecret => Secret_PROFILE(
      authId: 'lfPuK4uxWzKAYY8rfKlUBUn4p28GN956cITsYLZu',
      apiDomain:
          'https://melody-lofi-default-rtdb.asia-southeast1.firebasedatabase.app/songs');

  static Secret_PROFILE get usersSecret => Secret_PROFILE(
      authId: 'dXprJl5GEVAoJEomjNLRhwvzRzrJuHBZlbKGFT1X',
      apiDomain:
          'https://v1melody-cloud-default-rtdb.asia-southeast1.firebasedatabase.app/playlists');
}
