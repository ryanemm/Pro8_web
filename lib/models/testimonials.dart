import "package:flutter/material.dart";

class Testimonial {
  final int id;
  final String name, location, image, testimonialPreview, testimonialFull;

  Testimonial(
      {required this.id,
      required this.name,
      required this.location,
      required this.image,
      required this.testimonialPreview,
      required this.testimonialFull});
}

//demo list services offered
List<Testimonial> testimonials = [
  Testimonial(
      id: 1,
      name: "Cynthia",
      location: "Harare",
      image: "assets/images/cynthia.jpg",
      testimonialPreview:
          "I have been a fan and user of Pro8 incubators since 2015. I started off my entrepreneurial journey with their machines initially with a small incubator that carried around...",
      testimonialFull:
          "I have been a fan and user of Pro8 incubators since 2015. I started off my entrepreneurial journey with their machines initially with a small incubator that carried around 120 chicken eggs. With a boom in business I bought a bigger machine and several more over a period of 4-5 years til' I relocated. I have also witnessed improvements and advancements technologically as years went by which is a sign they are a progressive entity and pay attention to customer needs and technological advancements in the field. These improvements kept me competitive businesswise. I will recommend them anyway, anytime and from anywhere even in my sleep."),
  Testimonial(
      id: 2,
      name: "Thulani",
      location: "Mutare",
      image: "assets/images/thulani.jpg",
      testimonialPreview:
          "The best decision i ever made since i started my poultry business is buying an incubator from Pro8 Innovetics. Most of the times i am far away from my project but perfect...",
      testimonialFull:
          "The best decision i ever made since i started my poultry business is buying an incubator from Pro8 Innovetics. Most of the times i am far away from my project but perfect automation gives me peace of mind knowing my machine gives me a return on investment.  What i really like about the machine is the seamlessly automatic changeover to gas back up system when mains power is lost and cellphone communication which keeps me in touch with my machine and projects."),
  Testimonial(
      id: 3,
      name: "Kudzanai",
      location: "Harare",
      image: "assets/images/kudzanai.jpg",
      testimonialPreview:
          "Hello fellow farmers, i hope i find you all well. My name is Kudzanai Mungwariri, i run a hatchery bussiness in Harare, H and M hatchery. I have been using incubators from...",
      testimonialFull:
          "Hello fellow farmers, i hope i find you all well. My name is Kudzanai Mungwariri, i run a hatchery bussiness in Harare, H and M hatchery. I have been using incubators from Pro Innovetics for the past 5-years. The solar and gas back-up system is very reliable and cost-effective long-term. In this age of power-cuts and loadshedding, this system gives a farmer peace of mind knowing that your investment is secured by achieving high results regardless of weather and power interruptions. I would certainly recommend it to any aspiring chicken farmer and breeder, innovation in progress. "),
  Testimonial(
    id: 4,
    name: "Tinashe",
    location: "Domboshawa",
    image: "assets/images/tinashe.jpg",
    testimonialPreview:
        "Hie Pro8 innovetics  thank you for your hatchery service. Since I started using your Machines, our incubators are working well ….not forget about auto switch system. Now I...",
    testimonialFull:
        "Hie Pro8 innovetics  thank you for your hatchery service. Since I started using your Machines, our incubators are working well ….not forget about auto switch system ..now i don’t have any hustle to go check , if Zesa goes or not ..i can now use my phone to operate production 😎…keep it up good work👏👏",
  ),
];
