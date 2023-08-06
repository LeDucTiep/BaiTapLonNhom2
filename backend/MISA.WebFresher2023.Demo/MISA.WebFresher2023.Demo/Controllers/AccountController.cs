using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using MISA.WebFresher2023.Demo.BL.Dto;
using MISA.WebFresher2023.Demo.BL.Service;
using MISA.WebFresher2023.Demo.Common;
using MISA.WebFresher2023.Demo.Common.MyException;
using MISA.WebFresher2023.Demo.DL.Entity;
using MISA.WebFresher2023.Demo.DL.Model;
using System.Reflection;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace MISA.WebFresher2023.Demo.Controllers
{
    [Route("api/v1/[controller]s")]
    public class AccountController : BaseController<Account, AccountDto, AccountCreateDto, AccountUpdateDto>
    {
        protected readonly IAccountService _accountService;

        public AccountController(IAccountService accountService
            ) : base(accountService)
        {
            _accountService = accountService;
        }

        [Authorize]
        [Route("check-token")]
        [HttpGet]
        public async Task<IActionResult> CheckLoginAsync()
        {
            FirebaseUser user = HttpContext.GetFirebaseUser();

            return Ok(user);
        }

        /// <summary>
        /// API lấy tất cả danh sách chức vụ
        /// </summary>
        /// <returns>Danh sách chức vụ</returns>
        /// Author: LeDucTiep (23/05/2023)
        [HttpGet]
        public virtual async Task<IActionResult> GetAllAsync()
        {
            IEnumerable<AccountDto> list = await _baseService.GetAllAsync();

            if (!list.Any())
                return NoContent();

            return Ok(list);
        }

    }
}
