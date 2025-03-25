import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_me_app/data/repository_impl/naver_repository_impl.dart';
import 'package:read_me_app/data/source/naver_data_source.dart';
import 'package:read_me_app/data/source/naver_data_source_impl.dart';
import 'package:read_me_app/domain/repository/naver_repository.dart';
import 'package:read_me_app/domain/usecase/naver_usecase.dart';

final naverDataSourceProvider = Provider<NaverDataSource>((ref) {
  return NaverDataSourceImpl();
});

final naverRepositoryProvider = Provider<NaverRepository>((ref){
  final datasoure = ref.read(naverDataSourceProvider);
  return NaverRepositoryImpl(datasoure);
});

final fetchNaverUsecaseProvider = Provider((ref) {
  final naverRepo = ref.read(naverRepositoryProvider);
  return NaverUsecase(naverRepo);
});