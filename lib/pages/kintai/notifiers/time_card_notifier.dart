import 'package:KoheiKanagu_github_io/pages/kintai/models/time_card.dart';
import 'package:KoheiKanagu_github_io/util/logger.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TimeCardNotifier extends ValueNotifier<TimeCard> {
  TimeCardNotifier() : super(const TimeCard.undefined());

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  DocumentReference _documentReference;

  Future<void> _fetchToday() async {
    final user = await FirebaseAuth.instance.currentUser();

    if (user == null) {
      logger.warning('Not signed in');
      value = const TimeCard.notSignedIn();
      return;
    }

    final now = DateTime.now();
    final today = Timestamp.fromDate(DateTime(now.year, now.month, now.day));

    final querySnapshot = await Firestore.instance
        .collection(TimeCard.collectionPath)
        .where('uid', isEqualTo: user.uid)
        .where('today', isEqualTo: today)
        .limit(1)
        .getDocuments();

    if (querySnapshot.documents.isEmpty) {
      logger.info('Create New Card');

      value = TimeCard(uid: user.uid, today: today);
      return;
    }

    logger.info('Fetched Card');

    final snapshot = querySnapshot.documents.single;
    _documentReference = snapshot.reference;
    value = TimeCard.fromJson(snapshot.data);
  }

  void _save(TimeCard timeCard) {
    assert(timeCard != null);

    if (_documentReference == null) {
      Firestore.instance
          .collection(TimeCard.collectionPath)
          .add(timeCard.toJson())
          .then((ref) {
        logger.info('Success add: $ref');
        scaffoldKey.currentState.showSnackBar(
          const SnackBar(content: Text('Success')),
        );

        _documentReference = ref;
        value = timeCard;
      }, onError: () {
        logger.severe('error');
      });
    } else {
      Firestore.instance
          .collection(TimeCard.collectionPath)
          .document(_documentReference.documentID)
          .setData(timeCard.toJson())
          .then((_) {
        logger.info('Success setData');
        scaffoldKey.currentState.showSnackBar(
          const SnackBar(content: Text('Success')),
        );

        value = timeCard;
      }, onError: () {
        logger.severe('error');
      });
    }
  }

  void _buildAlertDialog(TimeCard card) {
    showDialog<void>(
      context: scaffoldKey.currentState.context,
      builder: (_) {
        return AlertDialog(
          title: const Text('既に打刻済みです'),
          content: const Text('上書きしますか？'),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.pop(scaffoldKey.currentState.context),
              child: const Text('Cancel'),
            ),
            FlatButton(
                onPressed: () {
                  _save(card);
                  Navigator.pop(scaffoldKey.currentState.context);
                },
                child: const Text('OK')),
          ],
        );
      },
    );
  }

  Future<void> punchIn() async {
    await _fetchToday();

    value.maybeWhen(
      (uid, today, punchInTime, punchOutTime) {
        final card = TimeCard(
          uid: uid,
          today: today,
          punchInTime: Timestamp.now(),
          punchOutTime: punchOutTime,
        );

        punchInTime == null ? _save(card) : _buildAlertDialog(card);
      },
      orElse: () {
        logger.warning('before fetch');
      },
    );
  }

  Future<void> punchOut() async {
    await _fetchToday();
    value.maybeWhen(
      (uid, today, punchInTime, punchOutTime) {
        final card = TimeCard(
          uid: uid,
          today: today,
          punchInTime: punchInTime,
          punchOutTime: Timestamp.now(),
        );

        punchOutTime == null ? _save(card) : _buildAlertDialog(card);
      },
      orElse: () {
        logger.warning('before fetch');
      },
    );
  }
}
