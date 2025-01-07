// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again
// with `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'
    as obx_int; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart' as obx;
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import '1_domain/entities/match_game_entity.dart';
import '1_domain/entities/settings_entity.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <obx_int.ModelEntity>[
  obx_int.ModelEntity(
      id: const obx_int.IdUid(2, 715927220178045743),
      name: 'SettingsEntity',
      lastPropertyId: const obx_int.IdUid(3, 126126461463416833),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 2632738998402894766),
            name: 'id',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 5186763676940013029),
            name: 'questionCategoryCountPerRound',
            type: 6,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(3, 126126461463416833),
            name: 'roundCount',
            type: 6,
            flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[]),
  obx_int.ModelEntity(
      id: const obx_int.IdUid(3, 2498379085814813052),
      name: 'MatchGameEntity',
      lastPropertyId: const obx_int.IdUid(7, 6799194277966990988),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 4700126382927328416),
            name: 'id',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 6134416879610677160),
            name: 'round',
            type: 6,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(3, 7767586780677169558),
            name: 'hostTeamId',
            type: 6,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(5, 3916163629831153199),
            name: 'firstTeamTrueQuestions',
            type: 30,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(6, 1471888314672129500),
            name: 'secondTeamTrueQuestions',
            type: 30,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(7, 6799194277966990988),
            name: 'categoriesSelectedId',
            type: 30,
            flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[])
];

/// Shortcut for [obx.Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [obx.Store.new] for an explanation of all parameters.
///
/// For Flutter apps, also calls `loadObjectBoxLibraryAndroidCompat()` from
/// the ObjectBox Flutter library to fix loading the native ObjectBox library
/// on Android 6 and older.
Future<obx.Store> openStore(
    {String? directory,
    int? maxDBSizeInKB,
    int? maxDataSizeInKB,
    int? fileMode,
    int? maxReaders,
    bool queriesCaseSensitiveDefault = true,
    String? macosApplicationGroup}) async {
  await loadObjectBoxLibraryAndroidCompat();
  return obx.Store(getObjectBoxModel(),
      directory: directory ?? (await defaultStoreDirectory()).path,
      maxDBSizeInKB: maxDBSizeInKB,
      maxDataSizeInKB: maxDataSizeInKB,
      fileMode: fileMode,
      maxReaders: maxReaders,
      queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
      macosApplicationGroup: macosApplicationGroup);
}

/// Returns the ObjectBox model definition for this project for use with
/// [obx.Store.new].
obx_int.ModelDefinition getObjectBoxModel() {
  final model = obx_int.ModelInfo(
      entities: _entities,
      lastEntityId: const obx_int.IdUid(3, 2498379085814813052),
      lastIndexId: const obx_int.IdUid(0, 0),
      lastRelationId: const obx_int.IdUid(0, 0),
      lastSequenceId: const obx_int.IdUid(0, 0),
      retiredEntityUids: const [9089785061346644142],
      retiredIndexUids: const [],
      retiredPropertyUids: const [1323630653377247350, 4133113194263758613],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, obx_int.EntityDefinition>{
    SettingsEntity: obx_int.EntityDefinition<SettingsEntity>(
        model: _entities[0],
        toOneRelations: (SettingsEntity object) => [],
        toManyRelations: (SettingsEntity object) => {},
        getId: (SettingsEntity object) => object.id,
        setId: (SettingsEntity object, int id) {
          object.id = id;
        },
        objectToFB: (SettingsEntity object, fb.Builder fbb) {
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.questionCategoryCountPerRound);
          fbb.addInt64(2, object.roundCount);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final questionCategoryCountPerRoundParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0);
          final roundCountParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0);
          final object = SettingsEntity(
              id: idParam,
              questionCategoryCountPerRound: questionCategoryCountPerRoundParam,
              roundCount: roundCountParam);

          return object;
        }),
    MatchGameEntity: obx_int.EntityDefinition<MatchGameEntity>(
        model: _entities[1],
        toOneRelations: (MatchGameEntity object) => [],
        toManyRelations: (MatchGameEntity object) => {},
        getId: (MatchGameEntity object) => object.id,
        setId: (MatchGameEntity object, int id) {
          object.id = id;
        },
        objectToFB: (MatchGameEntity object, fb.Builder fbb) {
          final firstTeamTrueQuestionsOffset = fbb.writeList(object
              .firstTeamTrueQuestions
              .map(fbb.writeString)
              .toList(growable: false));
          final secondTeamTrueQuestionsOffset = fbb.writeList(object
              .secondTeamTrueQuestions
              .map(fbb.writeString)
              .toList(growable: false));
          final categoriesSelectedIdOffset = fbb.writeList(object
              .categoriesSelectedId
              .map(fbb.writeString)
              .toList(growable: false));
          fbb.startTable(8);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.round);
          fbb.addInt64(2, object.hostTeamId);
          fbb.addOffset(4, firstTeamTrueQuestionsOffset);
          fbb.addOffset(5, secondTeamTrueQuestionsOffset);
          fbb.addOffset(6, categoriesSelectedIdOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final roundParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0);
          final hostTeamIdParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0);
          final categoriesSelectedIdParam = const fb.ListReader<String>(
                  fb.StringReader(asciiOptimization: true),
                  lazy: false)
              .vTableGet(buffer, rootOffset, 16, []);
          final firstTeamTrueQuestionsParam = const fb.ListReader<String>(
                  fb.StringReader(asciiOptimization: true),
                  lazy: false)
              .vTableGet(buffer, rootOffset, 12, []);
          final secondTeamTrueQuestionsParam = const fb.ListReader<String>(
                  fb.StringReader(asciiOptimization: true),
                  lazy: false)
              .vTableGet(buffer, rootOffset, 14, []);
          final object = MatchGameEntity(
              id: idParam,
              round: roundParam,
              hostTeamId: hostTeamIdParam,
              categoriesSelectedId: categoriesSelectedIdParam,
              firstTeamTrueQuestions: firstTeamTrueQuestionsParam,
              secondTeamTrueQuestions: secondTeamTrueQuestionsParam);

          return object;
        })
  };

  return obx_int.ModelDefinition(model, bindings);
}

/// [SettingsEntity] entity fields to define ObjectBox queries.
class SettingsEntity_ {
  /// See [SettingsEntity.id].
  static final id =
      obx.QueryIntegerProperty<SettingsEntity>(_entities[0].properties[0]);

  /// See [SettingsEntity.questionCategoryCountPerRound].
  static final questionCategoryCountPerRound =
      obx.QueryIntegerProperty<SettingsEntity>(_entities[0].properties[1]);

  /// See [SettingsEntity.roundCount].
  static final roundCount =
      obx.QueryIntegerProperty<SettingsEntity>(_entities[0].properties[2]);
}

/// [MatchGameEntity] entity fields to define ObjectBox queries.
class MatchGameEntity_ {
  /// See [MatchGameEntity.id].
  static final id =
      obx.QueryIntegerProperty<MatchGameEntity>(_entities[1].properties[0]);

  /// See [MatchGameEntity.round].
  static final round =
      obx.QueryIntegerProperty<MatchGameEntity>(_entities[1].properties[1]);

  /// See [MatchGameEntity.hostTeamId].
  static final hostTeamId =
      obx.QueryIntegerProperty<MatchGameEntity>(_entities[1].properties[2]);

  /// See [MatchGameEntity.firstTeamTrueQuestions].
  static final firstTeamTrueQuestions =
      obx.QueryStringVectorProperty<MatchGameEntity>(
          _entities[1].properties[3]);

  /// See [MatchGameEntity.secondTeamTrueQuestions].
  static final secondTeamTrueQuestions =
      obx.QueryStringVectorProperty<MatchGameEntity>(
          _entities[1].properties[4]);

  /// See [MatchGameEntity.categoriesSelectedId].
  static final categoriesSelectedId =
      obx.QueryStringVectorProperty<MatchGameEntity>(
          _entities[1].properties[5]);
}
