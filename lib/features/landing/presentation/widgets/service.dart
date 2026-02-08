import 'package:flutter/material.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ServiceList(),
    );
  }
}

class ServiceList extends StatelessWidget {
  const ServiceList({super.key});

  final List<ServiceModel> services = const [
    ServiceModel(
      serviceName: "Vortex",
      description:
          "Headed product design initiatives, defined design strategy, and ensured alignment with business objectives for market-leading products.",
    ),
    ServiceModel(
      serviceName: "Vortex",
      description:
          "Headed product design initiatives, defined design strategy, and ensured alignment with business objectives for market-leading products.",
    ),
    ServiceModel(
      serviceName: "Vortex",
      description:
          "Headed product design initiatives, defined design strategy, and ensured alignment with business objectives for market-leading products.",
    ),
    ServiceModel(
      serviceName: "Vortex",
      description:
          "Headed product design initiatives, defined design strategy, and ensured alignment with business objectives for market-leading products.",
    ),
    ServiceModel(
      serviceName: "Vortex",
      description:
          "Headed product design initiatives, defined design strategy, and ensured alignment with business objectives for market-leading products.",
    ),
    ServiceModel(
      serviceName: "Vortex",
      description:
          "Headed product design initiatives, defined design strategy, and ensured alignment with business objectives for market-leading products.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Wrap(
            spacing: 30,
            runSpacing: 30,
            children: services
                .map((service) => ServiceCard(service: service))
                .toList(),
          ),
        ],
      ),
    );
  }
}

// class ServiceCard extends StatelessWidget {
//   final ServiceModel service;
//   const ServiceCard({super.key, required this.service});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.35, // Adaptive width
//       padding: const EdgeInsets.all(20),
//       decoration: _cardDecoration(),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           ServiceHeader(serviceName: service.serviceName),
//           const SizedBox(height: 20),
//           ServiceDescription(description: service.description),
//         ],
//       ),
//     );
//   }
// }
class ServiceCard extends StatefulWidget {
  final ServiceModel service;
  const ServiceCard({super.key, required this.service});

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: MediaQuery.of(context).size.width * 0.35,
        padding: const EdgeInsets.all(20),
        decoration: _cardDecoration(),
        transform: _isHovered
            ? Matrix4.translationValues(0, -5, 0)
            : Matrix4.identity(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ServiceHeader(serviceName: widget.service.serviceName),
            const SizedBox(height: 20),
            ServiceDescription(description: widget.service.description),
          ],
        ),
      ),
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      border:
          Border.all(color: Colors.white.withValues(alpha: 0.5), width: 0.1),
      color: _isHovered ? Colors.white : const Color(0xff0a0a0b),
      borderRadius: BorderRadius.circular(15),
    );
  }
}

class ServiceHeader extends StatelessWidget {
  final String serviceName;
  const ServiceHeader({super.key, required this.serviceName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CompanyLogo(),
            const SizedBox(width: 10),
            ServiceDetails(name: serviceName),
          ],
        ),
        const Icon(Icons.arrow_forward_rounded, color: Color(0xffd9d9d9)),
      ],
    );
  }
}

class CompanyLogo extends StatelessWidget {
  const CompanyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 0.1),
        color: const Color(0xff19191a),
      ),
    );
  }
}

class ServiceDetails extends StatelessWidget {
  final String name;
  const ServiceDetails({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0xffd9d9d9),
        fontSize: 20,
      ),
    );
  }
}

class ServiceDescription extends StatelessWidget {
  final String description;
  const ServiceDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        color: Color(0xff999999),
        fontSize: 14,
      ),
    );
  }
}

class ServiceModel {
  final String serviceName;
  final String description;

  const ServiceModel({required this.serviceName, required this.description});
}
