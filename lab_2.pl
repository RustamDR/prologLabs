prof(dancer).
prof(painter).
prof(singer).
prof(writer).
not_heared(Voronov,Levicky):-Levicky=writer, Voronov\==painter.

solve(Voronov, Pavlov, Levicky, Saharov):-
    prof(Voronov),Voronov\==singer,
    prof(Levicky),Levicky\==Voronov,Levicky\==singer,
    prof(Pavlov),Pavlov\==Voronov,Pavlov\==Levicky,Pavlov\==writer,Pavlov\==painter,
    prof(Saharov),Saharov\==Voronov,Saharov\==Levicky,Saharov\==Pavlov,Saharov\==writer,Voronov\==writer,
    not_heared(Voronov,Levicky).
