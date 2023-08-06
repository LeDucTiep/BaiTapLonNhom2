using AutoMapper;
using MISA.WebFresher2023.Demo.BL.Dto;
using MISA.WebFresher2023.Demo.DL;
using MISA.WebFresher2023.Demo.DL.Entity;
using MISA.WebFresher2023.Demo.DL.Repository;

namespace MISA.WebFresher2023.Demo.BL.Service
{
    public class NewsService : BaseService<News, NewsDto, NewsCreateDto, NewsUpdateDto>, INewsService
    {
        INewsRepository _newsRepository;
        public NewsService(INewsRepository newsRepository,
            IMSDatabase msDatabase,
            IMapper mapper) : base(msDatabase, newsRepository, mapper)
        {
            _newsRepository = newsRepository;
        }
    }
}
