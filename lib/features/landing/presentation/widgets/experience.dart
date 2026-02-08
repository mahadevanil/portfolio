import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ExperienceCard(
            companyName: "Vortex",
            companyWebsite: "Vortex.co",
            category: "Tech Firm",
            duration: "2023 - Present",
            designation: "Product Designer",
            description:
                "Headed product design initiatives, defined design strategy, and ensured alignment with business objectives for market-leading products.",
          ),
          SizedBox(height: 30),
          ExperienceCard(
            companyName: "Vortex",
            companyWebsite: "Vortex.co",
            category: "Tech Firm",
            duration: "2023 - Present",
            designation: "Product Designer",
            description:
                "Headed product design initiatives, defined design strategy, and ensured alignment with business objectives for market-leading products.",
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String companyName;
  final String companyWebsite;
  final String category;
  final String duration;
  final String designation;
  final String description;

  const ExperienceCard({
    super.key,
    required this.companyName,
    required this.companyWebsite,
    required this.category,
    required this.duration,
    required this.designation,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      margin: EdgeInsets.symmetric(horizontal: width * .05),
      decoration: _cardDecoration(),
      child: Column(
        children: [
          ExperienceHeader(
            companyName: companyName,
            companyWebsite: companyWebsite,
            category: category,
            duration: duration,
          ),
          const SizedBox(height: 20),
          ExperienceDescription(
            designation: designation,
            description: description,
          ),
        ],
      ),
    );
  }
}

class ExperienceHeader extends StatelessWidget {
  final String companyName;
  final String companyWebsite;
  final String category;
  final String duration;

  const ExperienceHeader({
    super.key,
    required this.companyName,
    required this.companyWebsite,
    required this.category,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CompanyLogo(),
            const SizedBox(width: 10),
            CompanyDetails(
              name: companyName,
              website: companyWebsite,
            ),
            const SizedBox(width: 10),
            CategoryChip(category: category),
          ],
        ),
        Text(
          duration,
          style: const TextStyle(
            color: Color(0xffd9d9d9),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class ExperienceDescription extends StatelessWidget {
  final String designation;
  final String description;

  const ExperienceDescription({
    super.key,
    required this.designation,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        border:
            Border.all(color: Colors.white.withValues(alpha: 0.2), width: 0.1),
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            designation,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: Color(0xffd9d9d9),
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: Color(0xff999999),
              fontSize: 14,
            ),
          ),
        ],
      ),
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
        border:
            Border.all(color: Colors.white.withValues(alpha: 0.2), width: 0.1),
        color: const Color(0xff19191a),
      ),
    );
  }
}

class CompanyDetails extends StatelessWidget {
  final String name;
  final String website;

  const CompanyDetails({super.key, required this.name, required this.website});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffd9d9d9),
            fontSize: 20,
          ),
        ),
        Text(
          website,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xff999999),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String category;

  const CategoryChip({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border:
            Border.all(color: Colors.white.withValues(alpha: 0.2), width: 0.1),
        color: const Color(0xff19191a),
      ),
      child: Text(
        category,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xff999999),
          fontSize: 13,
        ),
      ),
    );
  }
}

BoxDecoration _cardDecoration() {
  return BoxDecoration(
    border: Border.all(color: Colors.white.withValues(alpha: 0.5), width: 0.1),
    color: const Color(0xff0a0a0b),
    borderRadius: BorderRadius.circular(15),
  );
}
