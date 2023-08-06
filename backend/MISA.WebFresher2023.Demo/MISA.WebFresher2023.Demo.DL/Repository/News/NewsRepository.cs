using MISA.WebFresher2023.Demo.DL.Entity;

namespace MISA.WebFresher2023.Demo.DL.Repository
{
    public class NewsRepository : BaseRepository<News>, INewsRepository
    {
        public NewsRepository(IMSDatabase msDatabase) : base(msDatabase)
        {
        }
    }
}
