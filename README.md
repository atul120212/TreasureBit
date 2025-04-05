# 💎 TreasureBit - Book Listing Web Application

**TreasureBit** is a web-based book listing platform built with **ASP.NET Web Forms**, **C#**, and **SQL Server**. The system enables users to register, log in, explore book listings, and manage their profiles in an intuitive and user-friendly interface.

## 📚 Features

- 📝 User Signup & Login with secure authentication
- 📖 Book Listing & Explore Page
- 📤 Book Upload functionality with image support
- 🙍 User Profile Management
- 🧑‍💼 Admin Dashboard for managing content
- 🎨 Consistent layout using Master Pages
- 📂 Uploads folder for storing media

## 🛠️ Tech Stack

- **Frontend**: ASP.NET Web Forms, HTML, CSS, JavaScript
- **Backend**: C#, ADO.NET
- **Database**: SQL Server
- **IDE**: Visual Studio

## 📁 Project Structure

```
├── admin_login.aspx
├── admin.Master
├── assets/
├── bin/
├── explore.aspx
├── Global.asax
├── home.aspx
├── login.aspx
├── main.Master
├── Scripts/
├── signup.aspx
├── uploads/
├── user.Master
├── user_profile.aspx
└── Web.config
```

## ⚙️ Getting Started

### Prerequisites

- Visual Studio (2019 or later)
- SQL Server or SQL Server Express
- .NET Framework (version matching the project)

### Installation Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/atul120212/TreasureBit.git
   ```

2. **Open the Solution**
   - Launch Visual Studio.
   - Open the `.sln` file from the cloned directory.

3. **Configure the Database**
   - Create a new SQL Server database.
   - Execute the required SQL scripts (if provided).
   - Update the connection string in `Web.config` to match your local SQL Server instance.

4. **Run the Project**
   - Set `home.aspx` as the start page.
   - Run the project using IIS Express or your local server.

## 📸 Screenshots

_Screenshots coming soon_

## 🧩 Future Enhancements

- Add search and filter for books
- Implement book categories and tags
- Improve admin capabilities for managing users/books
- Add pagination and sorting to listings
- Enhance styling with Bootstrap or Tailwind CSS

## 🙌 Contributing

Pull requests are welcome! Feel free to open issues and suggest features or bug fixes.

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

Made with ❤️ by [Atul](https://github.com/atul120212)
