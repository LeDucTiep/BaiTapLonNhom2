using MISA.WebFresher2023.Demo.Common.Attribute;
using MISA.WebFresher2023.Demo.Common.Constant;

namespace MISA.WebFresher2023.Demo.BL.Dto
{
    public class AccountDto
    {
        public Guid? AccountId { get; set; }

        public string? Email { get; set; }

        public string? FullName { get; set; }

        public string? PhoneNumber { get; set; }

        public int? YearOfBirth { get; set; }

        public Guid? CityId { get; set; }

        public Guid? DistrictId { get; set; }

        public Guid? CommuneId { get; set; }

        public int? Role { get; set; }
    }
}
