void main()
{
  var marks = [90,99,45,33,21],sum = 0 ;
  for(int i = 0;i<5; i++)
  {
    sum = sum + marks[i];
  }
  var average;
  average = sum / 5 ;

  print("average:${average}");

}