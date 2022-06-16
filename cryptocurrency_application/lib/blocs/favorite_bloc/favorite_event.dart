abstract class FavoriteEvent {}

class GetFavoriteCoins extends FavoriteEvent {
  final String currency;

  GetFavoriteCoins({required this.currency});
  
}

