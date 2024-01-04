// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:store_pro/product_store/models/app_state_model.dart';
import 'package:store_pro/themes/styles.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  String? name;
  String? number;
  String? email;
  String? pin;
  String? address;
  String? mobile;
  DateTime? dateTime = DateTime.now();
  Widget _buildName() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Name',
          prefixIcon: Icon(Ionicons.person_outline)),
      keyboardType: TextInputType.name,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is required';
        }
        return null;
      },
      onSaved: (String? value) {
        name = value;
      },
      onChanged: (value) => setState(() => name = value),
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email',
          prefixIcon: Icon(Ionicons.mail_outline)),
      keyboardType: TextInputType.emailAddress,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Email is required';
        }
        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
          return 'Please enter a valid email addres';
        }
        return null;
      },
      onSaved: (String? value) {
        email = value;
      },
      onChanged: (value) => setState(() => email = value),
    );
  }

  Widget _buildMobile() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'MobileNo',
          prefixIcon: Icon(Ionicons.call_outline)),
      keyboardType: TextInputType.phone,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Mobile number  is required';
        }
        return null;
      },
      onSaved: (String? value) {
        mobile = value;
      },
      onChanged: (value) => setState(() => mobile = value),
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Address',
          prefixIcon: Icon(Ionicons.location_outline)),
      keyboardType: TextInputType.streetAddress,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Address  is required';
        }
        return null;
      },
      onSaved: (String? value) {
        address = value;
      },
      onChanged: (value) => setState(() => address = value),
    );
  }

  Widget _builDateTimePicker() {
    return InkWell(
      onTap: () async {
        final newtime = await showDatePicker(
          context: context,
          initialDate: dateTime!,
          firstDate: DateTime.now(),
          lastDate: DateTime(2025),
        );
        if (newtime != null) {
          setState(() {
            dateTime = newtime;
          });
        }
      },
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Icon(
                    Ionicons.time_outline,
                    size: 28,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text('Delivery Time', style: Styles.deliveryTimeLabel),
                ],
              ),
              Text(
                DateFormat.yMMMd().add_jm().format(dateTime!),
                style: Styles.deliveryTimeLabel,
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      body: Consumer<AppStateModel>(builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildName(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildEmail(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildMobile(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildAddress(),
              ),
              _builDateTimePicker()
            ],
          ),
        );
      }),
    );
  }
}
