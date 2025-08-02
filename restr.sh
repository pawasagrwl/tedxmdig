#!/bin/bash

echo "🔧 Refactoring TEDxMDIG src directory..."

# Create new clean folders
mkdir -p src/components
mkdir -p src/data
mkdir -p src/public
mkdir -p src/styles

# Move layout components to new files
mv src/components/layout/Navigation.tsx src/components/Header.tsx
mv src/components/layout/Footer.tsx src/components/Footer.tsx

# Merge reusable UI components into flat structure
mv src/components/ui/*.tsx src/components/

# Move speaker and team sections to components
mv src/components/speakers/SpeakersSection.tsx src/components/SpeakersSection.tsx
mv src/components/team/TeamSection.tsx src/components/TeamSection.tsx

# Create and initialize Body.tsx
cat > src/components/Body.tsx <<'EOF'
import React from "react";
import HeroSection from "./HeroSection";
import AboutSection from "./AboutSection";
import SpeakersSection from "./SpeakersSection";
import ScheduleSection from "./ScheduleSection";
import TeamSection from "./TeamSection";

const Body: React.FC = () => {
  return (
    <>
      <HeroSection />
      <AboutSection />
      <SpeakersSection />
      <ScheduleSection />
      <TeamSection />
    </>
  );
};

export default Body;
EOF

# Move lib data files
mv src/lib/teamData.ts src/data/team.ts 2>/dev/null || echo "teamData.ts not found"

# Move styles if needed
mv src/styles/animations.css src/styles/animations.css 2>/dev/null

# Clean up old folders
rm -rf src/components/layout
rm -rf src/components/ui
rm -rf src/components/speakers
rm -rf src/components/team
rm -f src/components/index.ts

echo "✅ Folder structure refactored successfully."
echo "📌 Now update your imports to reflect the new structure (e.g., '@/components/Header')."
