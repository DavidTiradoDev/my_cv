import 'package:flutter/widgets.dart';
import 'package:my_cv/conctacs/domain/contacts_provider.dart';
import 'package:my_cv/conctacs/interface/contacts_screen.dart';
import 'package:provider/provider.dart';

class ContactsInjection {
  ContactsInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => ContactsProvider(),
      child: ContactsScreen(),
    );
  }
}
