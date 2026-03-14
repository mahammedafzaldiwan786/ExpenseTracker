# ExpenseTracker

A Spring Boot (JSP/MVC) web application to manage day-to-day **income** and **expenses** with categories/subcategories, vendors, accounts, reports, email support, Cloudinary integration, and payment integration.

## Tech Stack
- Java + Spring Boot (WAR packaging)
- Spring MVC + JSP (JSTL, Jasper)
- Spring Data JPA
- MySQL
- Spring Mail
- Authorize.Net (payment integration)
- Cloudinary (media)

## Main Features
- User session/login flows (see `SessionController`)
- Manage:
  - Expenses / Income
  - Categories / Subcategories
  - Vendors / Accounts
- Reports (see `UserReportsController`)
- Email support (see `MailService`)
- Payments (see `PaymentService` / Authorize.Net SDK)
- Static assets under `src/main/resources/static`

## Project Structure (high level)
- `src/main/java/com/grownited/controller` – MVC controllers (pages/routes)
- `src/main/java/com/grownited/entity` – JPA entities
- `src/main/java/com/grownited/repository` – Spring Data repositories
- `src/main/java/com/grownited/service` – business services (mail, payments, etc.)
- `src/main/webapp/WEB-INF` – JSP views
- `src/main/resources/application.properties` – application configuration

## Setup & Run (local)
### Prerequisites
- Java (use a version compatible with your Spring Boot setup)
- Maven (or use the included Maven wrapper)
- MySQL database

### Configure application properties
Update `src/main/resources/application.properties` with your local DB credentials and other settings (mail, etc.).

### Run with Maven
```bash
./mvnw spring-boot:run
```

Or build a WAR:
```bash
./mvnw clean package
```

Then deploy the generated WAR to Tomcat if needed.

## Security Notes
- **Do not commit secrets** (API keys, passwords) to the repository.
- Move Cloudinary/API credentials to environment variables or `application.properties`, and rotate any keys that were previously committed.

## License
Add a license if you plan to make this project reusable by others.
