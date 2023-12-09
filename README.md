## Running in development mode

Dependencies: 
- Ruby 3.1
- PostgreSQL
- Node.js

Fill credentials in `.env` file as
```
KALASHNIKOV_ESTATE_DATABASE_USERNAME=your_postgres_username
KALASHNIKOV_ESTATE_DATABASE_PASSWORD=your_postgres_password
```

Install dependencies:
```bash
bundle install
npm install
```
Run the frontend dev build:

```bash
foreman start -f Procfile.dev
```

Run the web server from IDE or from terminal with
```bash
rails s
```

link to the design layout of the site
[KalashnikovEstate](https://www.figma.com/file/gOx0BsfvX7XX6vd7JbuO1V/Kalashnikov-Manor?type=design&node-id=0%3A1&mode=design&t=g9vmJnMY0YCbzxj2-1)

