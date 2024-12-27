import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white.withOpacity(0.96),
        fontFamily: 'Roboto',
      ),
      home: const PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My PortFolio',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            const SizedBox(height: 20),
            _buildSectionTitle("Skills:"),
            _buildSkillsSection(),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                child: const Text("Next Page"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Saad Salman",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Text("I AM MOBILE APP\nDEVELOPER AND DESIGNER",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.6))),
        const SizedBox(height: 15),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.link)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.image,
                  size: 40,
                  color: Colors.grey,
                ),
                SizedBox(height: 10),
                Text(
                  'No image available',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
  }

  Widget _buildSkillsSection() {
    return Column(
      children: [
        _buildSkillBar("Flutter", 90),
        _buildSkillBar("Dart", 85),
        _buildSkillBar("UI/UX Design", 80),
      ],
    );
  }

  Widget _buildSkillBar(String skill, int percentage) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Text(skill),
          ),
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: percentage / 100,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                minHeight: 10,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text("$percentage%", style: const TextStyle(fontSize: 16)),
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  Widget _buildSectionTitle(String title) {
    return Text(title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My PortFolio',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildSectionTitle("Portfolio Interest Section"),
              _buildInterestSection(),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdPage()),
                    );
                  },
                  child: const Text("Next Page"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInterestSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInterestItem("Mobile App Development",
            "Creating innovative and user-friendly mobile applications."),
        _buildInterestItem("Web Development",
            "Building responsive and scalable web applications."),
        _buildInterestItem("Machine Learning",
            "Exploring algorithms and models to extract insights from data."),
        _buildInterestItem("UI/UX Design",
            "Designing intuitive and visually appealing user interfaces."),
        _buildInterestItem("Cloud Computing",
            "Leveraging cloud platforms for efficient and scalable solutions."),
        _buildInterestItem("Open Source Contribution",
            "Contributing to open source projects and communities."),
      ],
    );
  }

  Widget _buildInterestItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(description,
              style: const TextStyle(fontSize: 14, color: Colors.grey)),
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My PortFolio',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildAboutSection(),
              const SizedBox(height: 20),
              _buildEducationSection(),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FinalPage()),
                    );
                  },
                  child: const Text("Next Page"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAboutSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Saad Salman",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Text(
          "Passionate developer adept at crafting elegant and efficient solutions to complex problems. Dedicated to continuous learning and staying abreast of emerging technology.",
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 15),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Profession", style: TextStyle(fontSize: 16)),
            Text("Web Developer", style: TextStyle(fontSize: 16)),
          ],
        ),
        const Divider(
          height: 20,
          thickness: 1,
          color: Colors.black,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Date Of Birth", style: TextStyle(fontSize: 16)),
            Text("23-01-2004", style: TextStyle(fontSize: 16)),
          ],
        ),
        const Divider(
          height: 20,
          thickness: 1,
          color: Colors.black,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Education", style: TextStyle(fontSize: 16)),
            Text("Higher Education", style: TextStyle(fontSize: 16)),
          ],
        ),
        const Divider(
          height: 20,
          thickness: 1,
          color: Colors.black,
        ),
        const SizedBox(height: 15),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text(
                "CHECK RESUME",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEducationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Education",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        _buildEducationItem("Graduation", "The University Of Lahore",
            "Bachelor of Science in Information Engineering Technology (Continued)."),
        _buildEducationItem(
            "Intermediate", "Government College University", "ICS (2020-2022)")
      ],
    );
  }

  Widget _buildEducationItem(String type, String school, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(type,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(school,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(description,
              style: const TextStyle(fontSize: 14, color: Colors.grey)),
          const Divider(
            height: 20,
            thickness: 1,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My PortFolio',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildProjectsSection(),
              const SizedBox(height: 20),
              _buildExperienceSection(),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PortfolioScreen()),
                      (route) => false,
                    );
                  },
                  child: const Text("Back to Start"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProjectsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Projects and Experience",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        _buildProjectItem("Todo App",
            "A simple todo list app built with Flutter and Firebase."),
        _buildProjectItem("Weather App",
            "A weather app built with Flutter that fetches data from a REST API."),
        _buildProjectItem("Expense Tracker App",
            "The app enables users to efficiently manage their expenses on-the-go by providing a user-friendly interface to track their spending habits.")
      ],
    );
  }

  Widget _buildProjectItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(description,
              style: const TextStyle(fontSize: 14, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildExperienceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Container Inside Scrollbar Example",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const Text("Here 3 experience Minimum inside the Container",
            style: TextStyle(fontSize: 12, color: Colors.grey)),
        _buildExperienceItem(
            "Front-End Web Developer",
            "Code Alpha",
            "Remote Intern",
            "Successfully completed internship at Code Alpha Software House, gaining valuable hands-on experience in software development and contributing to real-world projects. Engaged in collaborative teamwork, honed technical skills, and gained insights into the professional software development environment.")
      ],
    );
  }

  Widget _buildExperienceItem(
      String title, String company, String type, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(company, style: const TextStyle(fontSize: 16)),
          Text(type, style: const TextStyle(fontSize: 14, color: Colors.grey)),
          Text(description,
              style: const TextStyle(fontSize: 14, color: Colors.grey)),
        ],
      ),
    );
  }
}
