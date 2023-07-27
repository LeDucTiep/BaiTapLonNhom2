using Dapper;
using MISA.WebFresher2023.Demo.Common.MyException;
using MISA.WebFresher2023.Demo.Common.Resource;
using MISA.WebFresher2023.Demo.DL.Entity;
using System.Data;
using static Dapper.SqlMapper;

namespace MISA.WebFresher2023.Demo.DL.Repository
{
    public class BookKeepingRepository : BaseRepository<BookKeeping>, IBookKeepingRepository
    {
        public BookKeepingRepository(IMSDatabase msDatabase) : base(msDatabase)
        {
        }

        /// <summary>
        /// Hàm thêm nhiều bản ghi
        /// </summary>
        /// <param name="values">Danh sách bản ghi cần thêm</param>
        /// <returns>Số bản ghi thay đổi</returns>
        /// Author: LeDucTiep (12/07/2023)
        public async Task<int> AddManyAsync(List<BookKeeping> values)
        {
            string sql = "INSERT INTO bookkeeping (ReceiptId, BookKeepingId, Note, DebitAccountId, CollectAccountId, AmountOfMoney, CreatedBy, CreatedDate) VALUES ";

            int index = 0;
            // Khởi tạo tham số 
            var dynamicParams = new DynamicParameters();

            foreach (var value in values)
            {
                sql += $"(@ReceiptId_{index}, @BookKeepingId_{index}, @Note_{index}, @DebitAccountId_{index}, @CollectAccountId_{index}, @AmountOfMoney_{index}, @CreatedBy_{index}, @CreatedDate_{index}),";

                // Thêm tham số 
                dynamicParams.Add($"ReceiptId_{index}", value.ReceiptId);
                dynamicParams.Add($"BookKeepingId_{index}", value.BookKeepingId);
                dynamicParams.Add($"Note_{index}", value.Note);
                dynamicParams.Add($"DebitAccountId_{index}", value.DebitAccountId);
                dynamicParams.Add($"CollectAccountId_{index}", value.CollectAccountId);
                dynamicParams.Add($"AmountOfMoney_{index}", value.AmountOfMoney);
                dynamicParams.Add($"CreatedBy_{index}", UserResource.Name);
                dynamicParams.Add($"CreatedDate_{index}", DateTime.Now);

                index++;
            }

            sql = sql[..^1];

            // Mở kết nối tới database
            var connection = await _msDatabase.GetOpenConnectionAsync();

            try
            {
                // Gọi procedure
                int changedCount = await connection.ExecuteAsync(
                    sql,
                    param: dynamicParams
                );

                return changedCount;
            }
            catch (Exception ex)
            {
                throw new InternalException();
            }
        }

        /// <summary>
        /// Hàm xóa các bản ghi không có trong danh sách
        /// </summary>
        /// <param name="receiptId">Id của phiếu thu</param>
        /// <param name="bookKeepingIds">Danh sách bookkeeping</param>
        /// <returns>Số bản ghi đã thay đối</returns>
        /// Author: LeDucTiep (12/07/2023)
        public async Task<int> DeleteNotInAsync(Guid receiptId, string bookKeepingIds)
        {
            // Tên procedure
            string procedure = ProcedureResource.BookKeepingDeleteNotIn;

            // Mở kết nối tới database
            var connection = await _msDatabase.GetOpenConnectionAsync();

            // Khởi tạo tham số 
            var dynamicParams = new DynamicParameters();

            // Thêm ...
            dynamicParams.Add("receiptId", receiptId);
            dynamicParams.Add("bookKeepingIds", bookKeepingIds);

            try
            {
                // Gọi procedure
                int changedCount = await connection.ExecuteAsync(
                    procedure,
                    param: dynamicParams,
                    commandType: CommandType.StoredProcedure
                );


                return changedCount;
            }
            catch (Exception ex)
            {
                throw new InternalException();
            }
        }

        /// <summary>
        /// Hàm lấy danh sách bookkeeping bằng receiptid
        /// </summary>
        /// <param name="id">Id của phiếu thu</param>
        /// <returns>Danh sách bookkeeping</returns>
        /// Author: LeDucTiep (12/07/2023)
        public async Task<List<BookKeeping>> GetByReceiptIdAsync(Guid id)
        {
            // Tên procedure
            string procedure = ProcedureResource.BookKeepingGetByReceiptId;

            // Kết nối với database
            var connection = await _msDatabase.GetOpenConnectionAsync();
            try
            {
                // Tham số 
                var dynamicParams = new DynamicParameters();
                dynamicParams.Add($"receiptId", id);

                // Bản ghi trả về 
                var bookKeepings = (List<BookKeeping>)await connection.QueryAsync<BookKeeping>(
                    procedure,
                    param: dynamicParams,
                    commandType: CommandType.StoredProcedure
                );

                return bookKeepings;
            }
            catch (Exception ex)
            {
                throw new InternalException();
            }
        }
    }
}
