// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_cart.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartListAdapter extends TypeAdapter<CartList> {
  @override
  final int typeId = 2;

  @override
  CartList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartList(
      data: fields[1] as String,
      amount: fields[2] as String,
      select: fields[3] as int,
      index: fields[0] as int?,
      image: fields[4] as dynamic,
      count: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, CartList obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.index)
      ..writeByte(1)
      ..write(obj.data)
      ..writeByte(2)
      ..write(obj.amount)
      ..writeByte(3)
      ..write(obj.select)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
