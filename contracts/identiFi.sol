// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IdentiFi {
    struct User {
        string firstName;
        string lastName;
        string username;
        string email;
        string homeAddress;
        string dateOfBirth;
        string education;
        string workHistory;
        string phoneNumber;
        string jobTitle;
        string x;
        string instagram;
        string tiktok;
        string youtube;
        string linkedin;
        string info;
        string[] skills;
        string imageURL;
        bool exists;
        uint[] appliedJobs; 
        Visibility visibility;
    }

    struct Visibility {
        bool education;
        bool workHistory;
        bool phoneNumber;
        bool homeAddress;
        bool dateOfBirth;
    }

     struct BasicInfo {
        string firstName;
        string lastName;
        string email;
        string homeAddress;
        string dateOfBirth;
        string phoneNumber;
    }

    struct SocialLinks {
        string x;
        string instagram;
        string tiktok;
        string youtube;
        string linkedin;
    }

    struct ProfessionalInfo {
        string education;
        string workHistory;
        string jobTitle;
        string info;
        string[] skills;
        string imageURL;
    }

    mapping(string => User) private users;
    mapping(address => string) private addressToUsername;
    mapping(string => bool) private usernames; // To check uniqueness of username


    modifier onlyUniqueUsername(string memory username) {
        require(!usernames[username], "Username already exists.");
        _;
    }
}