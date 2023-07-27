using AutoMapper;
using MISA.WebFresher2023.Demo.BL.Dto;
using MISA.WebFresher2023.Demo.DL.Entity;
using MISA.WebFresher2023.Demo.DL.Model;

namespace MISA.WebFresher2023.Demo.BL.Automapper
{
    /// <summary>
    /// Class dành cho automapper 
    /// </summary>
    /// Author: LeDucTiep (07/06/2023)
    public class ReceiptProfile : Profile
    {
        public ReceiptProfile()
        {
            // Map receipt sang receiptDto
            CreateMap<Receipt, ReceiptDto>();
            // Map receiptCreateDto sang Receipt
            CreateMap<ReceiptCreateDto, Receipt>();
            // Map receiptUpdateDto sang Receipt
            CreateMap<ReceiptUpdateDto, Receipt>();
            CreateMap<BasePage<Receipt>, BasePage<ReceiptDto>>();

            CreateMap<ReceiptUpdateDto, Receipt>();

            CreateMap<ReceiptCreateDto, ReceiptDto>();

            CreateMap<ReceiptUpdateDto, ReceiptDto>();
        }
    }
}
