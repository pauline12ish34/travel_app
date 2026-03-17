import 'package:flutter/material.dart';

import '../data/travel_data.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key, required this.destination});

  final TravelDestination destination;

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController =
      TextEditingController(text: 'Pauline Uwase');
  final TextEditingController _emailController =
      TextEditingController(text: 'pauline@example.com');

  int _guests = 2;
  int _nights = 2;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double total = widget.destination.pricePerNight * _nights;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Summary'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color(0xFFFDF8F0), Color(0xFFF1F8E9)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          top: false,
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.08),
                          blurRadius: 14,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            widget.destination.imageAsset,
                            width: 95,
                            height: 88,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.destination.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: <Widget>[
                                  const Icon(Icons.place_rounded,
                                      size: 16, color: Color(0xFF0F766E)),
                                  const SizedBox(width: 4),
                                  Expanded(
                                    child: Text(
                                      widget.destination.location,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '\$${widget.destination.pricePerNight.toStringAsFixed(0)} / night',
                                style: const TextStyle(
                                  color: Color(0xFF0F766E),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Traveler Information',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 12),
                  _InputLabel(
                    label: 'Full name',
                    child: TextFormField(
                      controller: _nameController,
                      decoration: _fieldDecoration('Enter your full name'),
                      validator: (String? value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please provide your name';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  _InputLabel(
                    label: 'Email address',
                    child: TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: _fieldDecoration('name@email.com'),
                      validator: (String? value) {
                        if (value == null || !value.contains('@')) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: _InputLabel(
                          label: 'Guests',
                          child: DropdownButtonFormField<int>(
                            initialValue: _guests,
                            decoration: _fieldDecoration('Guests'),
                            items: List<DropdownMenuItem<int>>.generate(
                              6,
                              (int i) => DropdownMenuItem<int>(
                                value: i + 1,
                                child: Text('${i + 1}'),
                              ),
                            ),
                            onChanged: (int? value) {
                              setState(() {
                                _guests = value ?? 2;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _InputLabel(
                          label: 'Nights',
                          child: DropdownButtonFormField<int>(
                            initialValue: _nights,
                            decoration: _fieldDecoration('Nights'),
                            items: List<DropdownMenuItem<int>>.generate(
                              10,
                              (int i) => DropdownMenuItem<int>(
                                value: i + 1,
                                child: Text('${i + 1}'),
                              ),
                            ),
                            onChanged: (int? value) {
                              setState(() {
                                _nights = value ?? 2;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0F766E).withValues(alpha: 0.08),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFF80CBC4)),
                    ),
                    child: Column(
                      children: <Widget>[
                        _PriceRow(
                          label: 'Rate',
                          value:
                              '\$${widget.destination.pricePerNight.toStringAsFixed(0)} x $_nights nights',
                        ),
                        const SizedBox(height: 6),
                        const _PriceRow(label: 'Service fee', value: '\$20'),
                        const Divider(height: 18),
                        _PriceRow(
                          label: 'Total',
                          value: '\$${(total + 20).toStringAsFixed(0)}',
                          isStrong: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () => _confirmBooking(context, total + 20),
                      icon: const Icon(Icons.check_circle_outline_rounded),
                      label: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 14),
                        child: Text(
                          'Confirm Booking',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.5,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0B3D2E),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _fieldDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: const BorderSide(color: Color(0xFFB2DFDB)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: const BorderSide(color: Color(0xFFB2DFDB)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
        borderSide: const BorderSide(color: Color(0xFF0F766E), width: 1.5),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    );
  }

  void _confirmBooking(BuildContext context, double finalTotal) {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Booking submitted successfully.'),
        backgroundColor: Color(0xFF0B3D2E),
      ),
    );

    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success'),
          content: Text(
            'Your booking for ${widget.destination.title} is confirmed. Total paid: \$${finalTotal.toStringAsFixed(0)}',
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, (Route<dynamic> route) => route.isFirst);
              },
              child: const Text('Back to Home'),
            ),
          ],
        );
      },
    );
  }
}

class _InputLabel extends StatelessWidget {
  const _InputLabel({required this.label, required this.child});

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xFF334155),
          ),
        ),
        const SizedBox(height: 6),
        child,
      ],
    );
  }
}

class _PriceRow extends StatelessWidget {
  const _PriceRow({
    required this.label,
    required this.value,
    this.isStrong = false,
  });

  final String label;
  final String value;
  final bool isStrong;

  @override
  Widget build(BuildContext context) {
    final FontWeight weight = isStrong ? FontWeight.w800 : FontWeight.w600;
    final double fontSize = isStrong ? 17 : 14.5;

    return Row(
      children: <Widget>[
        Text(label, style: TextStyle(fontWeight: weight, fontSize: fontSize)),
        const Spacer(),
        Text(
          value,
          style: TextStyle(
            fontWeight: weight,
            fontSize: fontSize,
            color: isStrong ? const Color(0xFF0B3D2E) : const Color(0xFF334155),
          ),
        ),
      ],
    );
  }
}
