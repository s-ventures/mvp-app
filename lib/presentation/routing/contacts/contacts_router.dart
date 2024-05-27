import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/contacts_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/details/contact_details_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/details/edit/contact_edit_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/new_contacts/from_agenda/from_agenda_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/new_contacts/manual/manual_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/new_contacts/upload_contacts/document_list/upload_contacts_document_list_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/new_contacts/upload_contacts/upload_contacts_page.dart';
import 'package:manifiesto_mvp_app/presentation/contacts/search/search_contacts_page.dart';
import 'package:manifiesto_mvp_app/presentation/routing/routes.dart';

class ContactsRouter {
  static GoRoute build(GlobalKey<NavigatorState> rootNavigatorKey) {
    return GoRoute(
      path: AppRoute.contacts.path,
      name: AppRoute.contacts.name,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: const Contacts(),
      ),
      routes: [
        // Search contacts
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.contactsSearch.path,
          name: AppRoute.contactsSearch.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const SearchContactsPage(),
          ),
        ),

        // New contact manual
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.contactsNewFromManual.path,
          name: AppRoute.contactsNewFromManual.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const NewContactManualPage(),
          ),
        ),

        // New contact from agenda
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.contactsNewFromAgenda.path,
          name: AppRoute.contactsNewFromAgenda.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const NewContactFromAgendaPage(),
          ),
        ),

        // Upload contacts
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.contactsNewFromUpload.path,
          name: AppRoute.contactsNewFromUpload.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const NewContactFromUploadPage(),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.contactsNewFromUploadDocumentsUploaded.path,
              name: AppRoute.contactsNewFromUploadDocumentsUploaded.name,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const ContactsDocumentListPage(),
              ),
            ),
          ],
        ),

        // Contact details
        GoRoute(
          parentNavigatorKey: rootNavigatorKey,
          path: AppRoute.contactDetails.path,
          name: AppRoute.contactDetails.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const ContactDetailsPage(),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: rootNavigatorKey,
              path: AppRoute.contactEdit.path,
              name: AppRoute.contactEdit.name,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const ContactEdit(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
