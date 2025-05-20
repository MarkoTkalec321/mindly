import 'package:flutter/material.dart';

T createModel<T>(BuildContext context, T Function() builder) => builder();

void safeSetState(VoidCallback fn) => fn();