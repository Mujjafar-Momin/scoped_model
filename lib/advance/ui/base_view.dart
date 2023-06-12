import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_example/service_locator.dart';

class BaseView<T extends Model> extends StatelessWidget {
  const BaseView(ScopedModelDescendantBuilder<T> builder, {super.key})
      : _builder = builder;
  final ScopedModelDescendantBuilder<T> _builder;

  @override
  Widget build(BuildContext context) {
    return ScopedModel<T>(
        model: locator<T>(),
        child: ScopedModelDescendant(
          builder: _builder,
        ));
  }
}
