INSERT INTO
     `Alumni` 
     (`AlumniID`, `AlumniFirstName`, `AlumniLastName`, `AreaStudy`, `GradYear`, `Email`, `Degree`, `WorkNumber`, `HomeNumber`, `LinkedIn`, `LakerConnectionSubscriber`, `Expertise`) 
 VALUES 
     ('1001', 'Johnny', 'Appleseed', 'Science', '2017', 'JAppleseed@gmail.com', 'BS', '4043332222', '4042223333', 'Linkedin.com/JAppleseed', '1', 'Database'), 
     ('1002', 'Mary ', 'Jane', 'Arts', '2012', 'MaryJ@gmail.com', 'BA', '7708889999', '7709998888', 'Linkedin.com/MJane', '1', 'Oral Communication'),
     ('1003', 'Tony ', 'Stark', 'Science', '2022', 'MaryJ@StarkT@gmail.com', 'BS', '4041112222', '4042221111', 'Linkedin.com/TStark', '1', 'Software Development');


INSERT INTO 
    `Donation` 
    (`DonationID`, `Amount`, `DonationDate`, `FundName`, `FundDepartment`, `AlumniID`) 
 VALUES 
    ('3001', '1500', '2023-06-13 00:00:00', 'St.Jude', 'CancerResearch', '1001'), 
    ('3002', '2000', '2023-11-30 02:12:12', 'AARP Foundation', 'Research', '1003'),
    ('3003', '500', '2023-11-30 02:12:12', 'Acorns Childrens Hospice', 'Development', '1002');


INSERT INTO 
    `Employment_History`
    (`EmploymentHistoryID`, `StartDate`, `EndDate`, `EmploymentJobTitle`, `SalaryRange`, `AlumniID`, `Company`) 
 VALUES 
    ('4001', '2017', '0', 'Software Engineer', '100000', '1001', 'Norfolk Southern'), 
    ('4002', '2012', '0', 'Art Director', '90000', '1002', 'Smithsonian'),
    ('4003', '2022', '2023', 'Biologist', '75000', '1003', 'Moderna');


INSERT INTO 
    `Events` 
    (`EventsID`, `Location`, `Date_1`, `Title`) 
 VALUES 
    ('4001', 'EdgeWater', '2023', 'Can Food Drive'), 
    ('4002', 'Clayton University Center', '2023', 'Present Giveaway');


INSERT INTO 
    `Mentorship` 
    (`MentorshipID`, `Mentee`, `Mentor`, `Status`) 
 VALUES 
    ('6001', '900222333', '1001', '1'), 
    ('6002', '900111222', '1002', '1');


INSERT INTO 
    `Student` 
    (`LakerID`, `FirstName`, `LastName`, `StudentEmail`, `ExpectedGradDate`)
 VALUES 
 ('900111222', 'Mark', 'Andrews', 'MAndrews@student.clayton.edu', '2023'), 
 ('900222333', 'Bill', 'Gates', 'BGates@student.clayton.edu', '2023'),
 ('900333444', 'Steve', 'Jobs', 'SJobs@student.clayton.edu', '2024')
