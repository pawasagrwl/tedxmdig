import React from "react";
import HeroSection from "./HeroSection";
import AboutSection from "./AboutSection";
import SpeakersSection from "./SpeakersSection";
import ScheduleSection from "./ScheduleSection";


const Body: React.FC = () => {
  return (
    <>
      <HeroSection />
      <AboutSection />
      <SpeakersSection />
      <ScheduleSection />
    </>
  );
};

export default Body;
