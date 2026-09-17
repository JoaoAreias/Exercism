Imports System.Runtime.CompilerServices

Module AccumulateExtensions
  <Extension()>
  Public Iterator Function Accumulate(Of T, TResult)(ByVal collection As IEnumerable(Of T), ByVal func as Func(Of T, TResult)) As IEnumerable(of TResult)
      Dim results As New List(of TResult)
      For Each item As T In collection
        Yield func(item)
      Next
    End Function
End Module