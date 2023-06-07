// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_realm_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class MyCredentials extends _MyCredentials
    with RealmEntity, RealmObjectBase, RealmObject {
  MyCredentials(
    String publicKeyHex,
    String address,
  ) {
    RealmObjectBase.set(this, 'publicKeyHex', publicKeyHex);
    RealmObjectBase.set(this, 'address', address);
  }

  MyCredentials._();

  @override
  String get publicKeyHex =>
      RealmObjectBase.get<String>(this, 'publicKeyHex') as String;
  @override
  set publicKeyHex(String value) =>
      RealmObjectBase.set(this, 'publicKeyHex', value);

  @override
  String get address => RealmObjectBase.get<String>(this, 'address') as String;
  @override
  set address(String value) => RealmObjectBase.set(this, 'address', value);

  @override
  Stream<RealmObjectChanges<MyCredentials>> get changes =>
      RealmObjectBase.getChanges<MyCredentials>(this);

  @override
  MyCredentials freeze() => RealmObjectBase.freezeObject<MyCredentials>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(MyCredentials._);
    return const SchemaObject(
        ObjectType.realmObject, MyCredentials, 'MyCredentials', [
      SchemaProperty('publicKeyHex', RealmPropertyType.string,
          primaryKey: true),
      SchemaProperty('address', RealmPropertyType.string),
    ]);
  }
}
