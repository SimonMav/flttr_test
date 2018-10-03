import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:test_flttr/Design.dart' as Design;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Design.Colors.whiteSmoke,
        appBar: AppBar(
          title: Text('Dienstplan Flltr Test 1612'),
          backgroundColor: Design.Colors.vividRed,
        ),
        body: new SingleChildScrollView(
          child: new SafeArea(
            child: new Material(
              child: new Column(
                children: <Widget>[
                  new Row(children: [
                    new Icon(Icons.filter_b_and_w),
                    new Text('Willkommen')
                  ]),
                  new Card(
                      child: Column(children: [
                    new Row(
                      children: [
                        new Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          child: new Text(
                            'Upcoming Duties',
                            textAlign: TextAlign.left,
                            style: Design.TextStyles.upcomingDutiesCardTitle,
                          ),
                        ),
                      ],
                    ),
                    new ExpansionList(
                      [
                        new DutyItem(
                          day: "Montag",
                          date: "01.01.1970",
                          time: "18:00 - 06:00",
                          place: "Kalsdorf",
                          unitType: "PRW",
                          crew: "",
                          isExpandedInitially: false,
                        ),
                        new DutyItem(
                          day: "Dienstag",
                          date: "02.01.1970",
                          time: "18:00 - 06:00",
                          place: "Kalsdorf",
                          unitType: "PRW",
                          crew: "Oh, Crew :o",
                          isExpandedInitially: false,
                        ),
                      ],
                    ),
                  ])),
                  new Card(
                      child: Column(children: <Widget>[
                    new Row(
                      children: [
                        new Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(5.0),
                          child: new Text(
                            'Offene Dienste',
                            textAlign: TextAlign.left,
                            style: Design.TextStyles.upcomingDutiesCardTitle,
                          ),
                        ),
                      ],
                    ),
                  ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DutyItem {
  final String day;
  final String date;
  final String time;
  final String place;
  final String unitType;
  final String crew;
  bool isExpandedInitially;

  DutyItem({
    /// All items are required to render the duty correctly.
    /// If some info isn't available, just give it an empty String ('')!
    /// e.g. if these is no crew yet just call it with crew: "".
    @required this.day,
    @required this.date,
    @required this.time,
    @required this.place,
    @required this.unitType,
    @required this.crew,
    this.isExpandedInitially = false,
  })  : assert(day != null),
        assert(time != null),
        assert(time != null),
        assert(place != null),
        assert(unitType != null),
        assert(crew != null);

  ExpansionPanelHeaderBuilder get headerBuilder =>
      (context, isExpanded) => new Column(children: [
            new Text(
              day + ', ' + date,
              style: Design.TextStyles.upcomingDutiesPanelTitle,
            ),
            new Text(
              time,
              style: Design.TextStyles.upcomingDutiesPanelSubtitle,
            )
          ]);
}

class ExpansionList extends StatefulWidget {
  /// The items that the expansion list should display; this can change
  /// over the course of the object but probably shouldn't as it won't
  /// transition nicely or anything like that.
  final List<DutyItem> duty;

  ExpansionList(this.duty) {
    // quick check to make sure there's no duplicate dates.
    // todo: check if this makes sense at all! (Mehrere Dienste an einem Tag möglich!)
    assert(new Set.from(duty.map((li) => li.date)).length == duty.length);
  }

  @override
  State<StatefulWidget> createState() => new ExpansionListState();
}

class ExpansionListState extends State<ExpansionList> {
  Map<String, bool> expandedByTitle = new Map();

  @override
  Widget build(BuildContext context) {
    return new ExpansionPanelList(
      children: widget.duty
          .map(
            (item) => new ExpansionPanel(
                headerBuilder: item.headerBuilder,
                body: new Container(
                  child: new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Icon(Icons.location_on,
                              size: 14.0, color: Design.Colors.planetDistance),
                          new Text(item.place,
                              style: Design.TextStyles.planetDistance),
                          new Container(width: 24.0),
                          new Icon(Icons.drive_eta,
                              size: 14.0, color: Design.Colors.planetDistance),
                          new Text(item.unitType,
                              style: Design.TextStyles.planetDistance),
                        ],
                      ),
                      new Row(
                        children: <Widget>[
                          new Icon(Icons.people,
                              size: 14.0, color: Design.Colors.planetDistance),
                          new Text(item.crew,
                              style: Design.TextStyles.planetDistance),
                        ],
                      )
                    ],
                  ),
                ),
                isExpanded:
                    expandedByTitle[item.day] ?? item.isExpandedInitially),
          )
          .toList(growable: false),
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          expandedByTitle[widget.duty[index].day] = !isExpanded;
        });
      },
    );
  }
}
