import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/main.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/kintai/models/time_card.dart';

class TimeCardNotifier extends StateNotifier<TimeCard> {
  TimeCardNotifier() : super(const TimeCard.undefined());

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  DocumentReference _documentReference;

  Future<void> fetchToday() async {
    final user = await FirebaseAuth.instance.currentUser;

    if (user == null) {
      logger.warning('Not signed in', null, StackTrace.current);
      state = const TimeCard.notSignedIn();
      return;
    }

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    final querySnapshot = await FirebaseFirestore.instance
        .collection(TimeCard.collectionPath)
        .where('uid', isEqualTo: user.uid)
        .where('today', isEqualTo: today)
        .limit(1)
        .get();

    if (querySnapshot.docs.isEmpty) {
      logger.info('Create New Card', null, StackTrace.current);

      state = TimeCard(uid: user.uid, today: today);
      return;
    }

    logger.info('Fetched Card', null, StackTrace.current);

    final snapshot = querySnapshot.docs.single;
    _documentReference = snapshot.reference;
    state = TimeCard.fromJson(snapshot.data());
  }

  void _save(TimeCard timeCard) {
    assert(timeCard != null);

    if (_documentReference == null) {
      FirebaseFirestore.instance
          .collection(TimeCard.collectionPath)
          .add(timeCard.toJson())
          .then((ref) {
        logger.info('Success add: $ref', null, StackTrace.current);
        scaffoldKey.currentState.showSnackBar(
          const SnackBar(content: Text('Success')),
        );

        _documentReference = ref;
        state = timeCard;
      }, onError: () {
        logger.error('error', null, StackTrace.current);
      });
    } else {
      FirebaseFirestore.instance
          .collection(TimeCard.collectionPath)
          .doc(_documentReference.id)
          .set(timeCard.toJson())
          .then((_) {
        logger.info('Success setData', null, StackTrace.current);
        scaffoldKey.currentState.showSnackBar(
          const SnackBar(content: Text('Success')),
        );

        state = timeCard;
      }, onError: () {
        logger.error('error', null, StackTrace.current);
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
    await fetchToday();

    state.maybeWhen(
      (uid, today, punchInTime, punchOutTime) {
        final card = TimeCard(
          uid: uid,
          today: today,
          punchInTime: DateTime.now(),
          punchOutTime: punchOutTime,
        );

        punchInTime == null ? _save(card) : _buildAlertDialog(card);
      },
      orElse: () {
        logger.warning('before fetch', null, StackTrace.current);
      },
    );
  }

  Future<void> punchOut() async {
    await fetchToday();
    state.maybeWhen(
      (uid, today, punchInTime, punchOutTime) {
        final card = TimeCard(
          uid: uid,
          today: today,
          punchInTime: punchInTime,
          punchOutTime: DateTime.now(),
        );

        punchOutTime == null ? _save(card) : _buildAlertDialog(card);
      },
      orElse: () {
        logger.warning('before fetch', null, StackTrace.current);
      },
    );
  }
}
