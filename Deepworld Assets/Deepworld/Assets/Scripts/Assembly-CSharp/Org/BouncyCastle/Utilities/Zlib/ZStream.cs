namespace Org.BouncyCastle.Utilities.Zlib
{
	public class ZStream
	{
		public byte[] next_in;
		public int next_in_index;
		public int avail_in;
		public long total_in;
		public byte[] next_out;
		public int next_out_index;
		public int avail_out;
		public long total_out;
		public string msg;
		public long adler;
	}
}
