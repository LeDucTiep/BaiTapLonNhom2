using AutoMapper;
using MISA.WebFresher2023.Demo.BL.Dto;
using MISA.WebFresher2023.Demo.DL;
using MISA.WebFresher2023.Demo.DL.Entity;
using MISA.WebFresher2023.Demo.DL.Repository;

namespace MISA.WebFresher2023.Demo.BL.Service
{
    public class CommentService : BaseService<Comment, CommentDto, CommentCreateDto, CommentUpdateDto>, ICommentService
    {
        ICommentRepository _commentRepository;
        public CommentService(ICommentRepository commentRepository,
            IMSDatabase msDatabase,
            IMapper mapper) : base(msDatabase, commentRepository, mapper)
        {
            _commentRepository = commentRepository;
        }
    }
}
