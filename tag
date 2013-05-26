vector<vector<int> > ret;
  vector<int> tmp;
	if(num.size() < 4)
		return ret;
	sort(num.begin(), num.end());
	for(int i = 0; i < num.size() - 3; i++ )
	{
		int a = num[i];
		for(int j = i + 1; j < num.size() - 2; j++)
		{
			int b = num[j];
			int l = j + 1;
			int r = num.size() - 1;
			while(l < r)
			{
				int sum = a + b + num[l] + num[r];
				if(sum == target)
				{
					tmp.clear();
					tmp.push_back(a);
					tmp.push_back(b);
					tmp.push_back(num[l]);
					tmp.push_back(num[r]);
					ret.push_back(tmp);
				}
				else if(sum < target)
					l++;
				else
					r--;
			}
		}
	}
	ret.erase(unique(ret.begin(), ret.end()), ret.end());
	return ret;
