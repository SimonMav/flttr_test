import 'package:flutter/material.dart';
import 'package:test_flttr/Design.dart' as Design;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Design.Colors.whiteSmoke,
        appBar: AppBar(
          title: Text('Dienstplan Flltr Test 0'),
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: [
            DutyPanel(
              day: 'Mittwoch',
              date: '03.10.2018',
              time: '18:00 - 06:00 Uhr',
              place: 'Kalsdorf',
              unitType: 'RTW',
              crew: 'Kerschner Benjamin, Ing.',
            ),
            DutyPanel(
                day: 'Sonntag',
                date: '28.10.2018',
                time: '18:00 - 06:00 Uhr',
                place: 'Kalsdorf',
                unitType: 'RTW',
                crew: ''),
            DutyNew(
              day: 'Sonntag',
              date: '14.10.2018',
              time: '18:00 - 06:00 Uhr',
              place: 'Kalsdorf',
              unitType: 'RTW',
              crew: '',
            )
          ],
        ),
      ),
    );
  }
}

class DutyNew extends StatelessWidget {
  DutyNew(
      {this.day, this.date, this.time, this.place, this.unitType, this.crew});

  final String day;
  final String date;
  final String time;
  final String place;
  final String unitType;
  final String crew;

  @override
  Widget build(BuildContext context) {
    final dutyCardNew = new Container(
      margin: const EdgeInsets.only(left: 0.5, right: 0.5),
      decoration: new BoxDecoration(
        color: Design.Colors.blueJeans,
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
              color: Colors.grey,
              blurRadius: 500.0,
              offset: new Offset(0.0, 10.0))
        ],
      ),
      child: new Container(
        margin: const EdgeInsets.only(top: 16.0, left: 10.0),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(date, style: Design.TextStyles.dutyTitle),
            new Text(day + ' ' + time, style: Design.TextStyles.dutyLocation),
/*
            new Container(
                color: const Color(0xFF00C6FF),
                width: 24.0,
                height: 1.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0)),
  */
            new Row(
              children: <Widget>[
                new Icon(Icons.location_on,
                    size: 14.0, color: Design.Colors.planetDistance),
                new Text(place, style: Design.TextStyles.planetDistance),
                new Container(width: 24.0),
                new Icon(Icons.drive_eta,
                    size: 14.0, color: Design.Colors.planetDistance),
                new Text(unitType, style: Design.TextStyles.planetDistance),
              ],
            ),
            new Row(
              children: <Widget>[
                new Icon(Icons.people,
                    size: 14.0, color: Design.Colors.planetDistance),
                new Text(crew, style: Design.TextStyles.planetDistance),
              ],
            )
          ],
        ),
      ),
    );

    return new Container(
      height: 100.0,
      margin: const EdgeInsets.only(top: 16.0, bottom: 4.0),
      child: new FlatButton(
        onPressed: () {},
        child: new Stack(
          children: <Widget>[
            dutyCardNew,
          ],
        ),
      ),
    );
  }
}

class DutyPanel extends StatelessWidget {
  DutyPanel(
      {this.day, this.date, this.time, this.place, this.unitType, this.crew});

  final String day;
  final String date;
  final String time;
  final String place;
  final String unitType;
  final String crew;

  @override
  Widget build(BuildContext context) {
    final dutyPanel = new Container(
      child: new ExpansionPanelList(
        key: key,
        children: <ExpansionPanel>[
          new ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) =>
                new Text(date + ' - ' + time),
            body: new Container(
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Icon(Icons.location_on,
                          size: 14.0, color: Design.Colors.planetDistance),
                      new Text(place, style: Design.TextStyles.planetDistance),
                      new Container(width: 24.0),
                      new Icon(Icons.drive_eta,
                          size: 14.0, color: Design.Colors.planetDistance),
                      new Text(unitType,
                          style: Design.TextStyles.planetDistance),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Icon(Icons.people,
                          size: 14.0, color: Design.Colors.planetDistance),
                      new Text(crew, style: Design.TextStyles.planetDistance),
                    ],
                  )
                ],
              ),
            ),
            isExpanded: true,
          ),
        ],
        animationDuration: kThemeAnimationDuration,
      ),
    );

    return dutyPanel;
  }
}

class DutyContainer extends StatefulWidget {
  @override
  DutyContainerState createState() => new DutyContainerState();
}

class DutyItem {
  DutyItem({this.isExpanded: false, this.header, this.body});

  bool isExpanded;
  final String header;
  final String body;
}

class DutyContainerState extends State<DutyContainer> {
  List<DutyItem> _items = <DutyItem>[
    new DutyItem(header: 'Duty header Info', body: 'Duty body Info')
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: [
        new ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _items[index].isExpanded = !_items[index].isExpanded;
            });
          },
          children: _items.map((DutyItem item) {
            return new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return new Text(item.header);
              },
              isExpanded: item.isExpanded,
              body: new Container(
                child: new Text('whatever'),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
