﻿namespace MiniSprintApp
{
    public class User
    {
        public string FullName { get; set; }
        public string Username { get; set; }
        public byte[] PasswordHash { get; set; }
        public byte[] PasswordSalt { get; set; }
    }
}
