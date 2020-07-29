using System.Collections.Generic;

public class ObjectPool<T, U> : Singleton<U>
{
	public List<ObjectPoolPattern> patterns;
}
