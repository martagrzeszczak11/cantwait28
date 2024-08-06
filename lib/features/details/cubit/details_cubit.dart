import 'package:bloc/bloc.dart';
import 'package:cantwait28/features/Details/cubit/details_cubit.dart';
import 'package:cantwait28/repositories/items_repository.dart';


class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this._itemsRepository) : super(DetailsState(itemModel: null));

  final ItemsRepository _itemsRepository;

  Future<void> getItemWithID(String id) async {
    final itemModel = await _itemsRepository.get(id: id);
    emit(DetailsState(itemModel: itemModel));
  }
}
