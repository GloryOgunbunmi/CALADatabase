
CREATE TABLE Events (
                EventsID INT NOT NULL,
                Location VARCHAR(50) NOT NULL,
                Date_1 DATETIME NOT NULL,
                Title VARCHAR(60) NOT NULL,
                CONSTRAINT Events_pk PRIMARY KEY (EventsID)
)

CREATE TABLE Student (
                LakerID INT NOT NULL,
                FirstName VARCHAR(20) NOT NULL,
                LastName VARCHAR(20) NOT NULL,
                StudentEmail VARCHAR(50) NOT NULL,
                ExpectedGradDate DATETIME NOT NULL,
                CONSTRAINT Student_pk PRIMARY KEY (LakerID)
)

CREATE TABLE Alumni (
                AlumniID INT NOT NULL,
                AlumniFirstName VARCHAR(20) NOT NULL,
                AlumniLastName VARCHAR(20) NOT NULL,
                AreaStudy VARCHAR(50) NOT NULL,
                GradYear DATETIME NOT NULL,
                Email VARCHAR(50) NOT NULL,
                Degree VARCHAR(50) NOT NULL,
                WorkNumber NUMERIC(10) NOT NULL,
                HomeNumber NUMERIC NOT NULL,
                LinkedIn VARCHAR(50),
                LakerConnectionSubscriber BOOLEAN NOT NULL,
                EventsID INT NOT NULL,
                CONSTRAINT Degree_Major PRIMARY KEY (AlumniID)
)

CREATE TABLE Donation (
                DonationID INT NOT NULL,
                Amount NUMERIC(10) NOT NULL,
                DonationDate DATETIME NOT NULL,
                FundName VARCHAR(50) NOT NULL,
                FundDepartment VARCHAR(50) NOT NULL,
                AlumniID INT NOT NULL,
                CONSTRAINT Donation_pk PRIMARY KEY (DonationID)
)

CREATE TABLE Mentorship (
                MentorshipID INT NOT NULL,
                Mentee INT NOT NULL,
                Mentor INT NOT NULL,
                Status BOOLEAN NOT NULL,
                CONSTRAINT Mentorship_pk PRIMARY KEY (MentorshipID)
)

CREATE TABLE Employment_History (
                EmploymentHistoryID INT NOT NULL,
                StartDate DATETIME NOT NULL,
                EndDate DATETIME NOT NULL,
                EmploymentJobTitle VARCHAR(20) NOT NULL,
                SalaryRange NUMERIC(10) NOT NULL,
                AlumniID INT NOT NULL,
                CONSTRAINT Employment_History_pk PRIMARY KEY (EmploymentHistoryID)
)

CREATE TABLE Company (
                CompanyID VARCHAR(20) NOT NULL,
                CompanyName VARCHAR(40) NOT NULL,
                SalaryRange NUMERIC(10),
                EmploymentHistoryID INT NOT NULL,
                CONSTRAINT Company_pk PRIMARY KEY (CompanyID)
)

ALTER TABLE Alumni ADD CONSTRAINT Events_Alumni_fk
FOREIGN KEY (EventsID)
REFERENCES Events (EventsID)
ON DELETE CASCADE
ON UPDATE CASCADE

ALTER TABLE Mentorship ADD CONSTRAINT Student_Mentorship_fk
FOREIGN KEY (Mentee)
REFERENCES Student (LakerID)
ON DELETE CASCADE
ON UPDATE CASCADE

ALTER TABLE Employment_History ADD CONSTRAINT Alumni_Employment_History_fk
FOREIGN KEY (AlumniID)
REFERENCES Alumni (AlumniID)
ON DELETE CASCADE
ON UPDATE CASCADE

ALTER TABLE Mentorship ADD CONSTRAINT Alumni_Mentorship_fk
FOREIGN KEY (Mentor)
REFERENCES Alumni (AlumniID)
ON DELETE CASCADE
ON UPDATE CASCADE

ALTER TABLE Donation ADD CONSTRAINT Alumni_Donate_fk
FOREIGN KEY (AlumniID)
REFERENCES Alumni (AlumniID)
ON DELETE CASCADE
ON UPDATE CASCADE

ALTER TABLE Company ADD CONSTRAINT Employment_History_Company_fk
FOREIGN KEY (EmploymentHistoryID)
REFERENCES Employment_History (EmploymentHistoryID)
ON DELETE CASCADE
ON UPDATE CASCADE
