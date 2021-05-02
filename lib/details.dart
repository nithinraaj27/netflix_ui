import 'package:netflix/recently%20watched.dart';

import 'hollywood.dart';


List<recent> getRecent()
{
  // ignore: deprecated_member_use
  List<recent> watched = new List();
  recent rs = new recent();

  //1
  rs.imgurl = "https://i.pinimg.com/236x/d3/7a/03/d37a037c2a43340c0df7f6ab91e9b204.jpg";
  rs.name = "Arrow";
  watched.add(rs);
  rs = new recent();

  //2
  rs.imgurl = "https://i.pinimg.com/236x/6a/48/b3/6a48b3e46b400cef3352e852b2fa012d.jpg";
  rs.name = "Vampire Dairies";
  watched.add(rs);
  rs = new recent();

  //3
  rs.imgurl = "https://i.pinimg.com/236x/f8/e6/fd/f8e6fd8e23848bc8ce934e56449941cb.jpg";
  rs.name = "Dark";
  watched.add(rs);
  rs = new recent();

  //4
  rs.imgurl = "https://i.pinimg.com/236x/33/ae/7e/33ae7e4d6c49f9c378e7e9e03cd90833.jpg";
  rs.name = "Lock And Key";
  watched.add(rs);
  rs = new recent();

  return watched;
}

List<tophollywood> getHollywood()
{
  // ignore: deprecated_member_use
  List<tophollywood> movie = new List();
  tophollywood topmoviee = new tophollywood();

  //1
  topmoviee.imgurl = "https://i.pinimg.com/236x/fe/42/ec/fe42ec66f0ff5419f7f2dfc59e9d93dd.jpg";
  topmoviee.name = "Stowaway";
  movie.add(topmoviee);
  topmoviee = new tophollywood();

  //2
  topmoviee.imgurl = "https://i.pinimg.com/236x/c1/a9/b1/c1a9b1f728efae31d7c75d24b99c4d79.jpg";
  topmoviee.name = "Invictus";
  movie.add(topmoviee);
  topmoviee = new tophollywood();

  //3
  topmoviee.imgurl = "https://i.pinimg.com/236x/49/c0/ba/49c0ba637f337e2ec1f8a59c8d6cea4d.jpg";
  topmoviee.name = "Miracle";
  movie.add(topmoviee);
  topmoviee = new tophollywood();

  //4
  topmoviee.imgurl = "https://i.pinimg.com/236x/a5/65/9f/a5659f407ceaadb017fd85c3fc36e710.jpg";
  topmoviee.name = "Antman";
  movie.add(topmoviee);
  topmoviee = new tophollywood();

  return movie;
}