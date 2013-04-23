using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using B2BTI.Domain.Entity;

namespace B2BTI.Domain.Abstract
{
    public interface IUserRepository
    {
        //Query
        IQueryable<User> GetUserById(int UserId);
        IQueryable<UserDetail> GetUserDetailByUserId(int UserId);
        IQueryable<UserDetail> GetUserDetailByUserDetailId(int UserDetailId);
        IQueryable<UserDetail> GetUserDetailByCompanyName(string companyName);


        //ADD
        void AddUser(User user);
        void AddUserDetail(UserDetail userDetail);

        //Upadate
        void UpdateUser(User user);
        void UpdateUserDetail(UserDetail userDetail);
        
        //Delete
        void DeleteUser(User user);
        void DeleteUserDetail(UserDetail userDetail);

        void SaveChanges();
        void Dispose();


    }
}
