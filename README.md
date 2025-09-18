# Travel Companion App README

Welcome to **Travel Companion**, a unified mobile solution for effortless trip planning, seamless payments, real-time security, and IoT-powered device tracking.

## Key Features

**1. Automatic Itinerary Builder**
When you set travel dates and select points of interest, the app auto-generates a day-by-day itinerary. It optimizes routes, schedules arrival, lodging, activities, meals, and transit times—ensuring you spend less time planning and more time exploring.

**2. QR-Powered Payments \& NFC/UPI Integration**
Instantly pay partners, vendors, and fellow travelers using UPI or NFC. Scan QR codes directly within the app to authorize secure transactions, split bills, or send remittances.

**3. Dynamic Alerts \& Safety Notifications**
Get real-time alerts for restricted zones (e.g., tribal or protected areas) and weather advisories. The app overlays warnings on your route map to help you avoid entry violations or unsafe conditions.

**4. In-App Bookings \& History**
Manage hotel check-ins, restaurant reservations, and activity tickets in one place. View your complete payment and booking history under the “History” tab for easy expense tracking and audit trails.

**5. IoT Device Discovery \& Mapping**
Leveraging onboard Bluetooth and LoRa modules, the app discovers and maps companion devices (trackers, sensors, beacons) on an interactive map. See device locations along your route in real time, with travel-distance estimates and signal strength indicators.

**6. Device Management \& Group Coordination**
– **Add \& Manage Devices**: Pair new IoT gadgets, assign names, and configure alerts.
– **People \& Groups**: Invite friends or family to share location tags and devices. Establish groups for synchronized tracking or group calls.
– **Group Call**: Launch a push-to-talk group call with all connected members instantly.

**7. Device History \& Analytics**
Review chronological logs of each IoT device’s check-ins at places like trailheads, rivers, or caves. Analyze dwell times, movement patterns, and signal drop-offs to optimize future trips.

## Screenshots

- **Home Dashboard**: Quick access to Payments, Itinerary, Security, and IoT modules.
- **Itinerary View**: Three-day plan with five landmarks and three eateries automatically arranged by time and proximity.
- **QR Scan**: Built-in scanner for swift UPI/NFC payments.
- **IoT Map \& Devices**: Interactive map showing Bluetooth-enabled trackers, device list with TID tags, and action buttons for calls or device additions.


## Getting Started

1. **Install** the app from your platform’s store.
2. **Sign Up / Log In** with your credentials; your unique Travel ID (TID) enables peer discovery.
3. **Build Your Trip**: Enter dates and preferred spots—let the app do the rest.
4. **Pair Devices**: Navigate to the IoT tab and tap “Add New Device.” Follow on-screen prompts to scan device QR/TID codes.
5. **Invite Companions**: Share your TID or QR invite link so friends can join your group.
6. **Go Explore**: Check alerts, follow the itinerary, make payments, and stay connected with your group’s devices.

## Technical Overview

- **Frontend**: Flutter UI with responsive layouts and custom map overlays.
- **Payments**: UPI/NFC module integrating with India’s NPCI rails and secure QR-based transactions.
- **Mapping \& Alerts**: Google Maps SDK with polygon overlays for restricted zones and custom route planners.
- **IoT Stack**: BLE and LoRaWAN support for long-range tracking; backend services handle device telemetry, location aggregation, and group communication.

[^3]: Home.jpg

[^4]: IOT.jpg

