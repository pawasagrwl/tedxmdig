"use client";

import React from "react";
import HeroSection from "@/components/HeroSection";
import AboutSection from "@/components/AboutSection";
import AnimatedSection from "@/components/AnimatedSection";
import SpeakersSection from "@/components/SpeakersSection";

export default function HomePage() {
  const handleBookNowClick = () => {
    window.open("https://forms.office.com/e/Nvkd0kNPA7", "_blank", "noopener,noreferrer");
  };

  return (
    <>
      {/* Hero Section with its own background and animation */}
      <AnimatedSection className="relative h-screen">

        {/* Hero Section */}
        <HeroSection
          title="Fail Forward"
          subtitle="Ideas that challenge our perception of reality."
          onCtaClick={handleBookNowClick}
        />
      </AnimatedSection>

      {/* About Section */}
      <AboutSection />

      {/* Speakers Section */}
      <SpeakersSection />
    </>
  );
}
