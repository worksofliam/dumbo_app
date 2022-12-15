**free

ctl-opt dftactgrp(*no);

dcl-pi P2830;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P572.rpgleinc'
/copy 'qrpgleref/P2365.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'

dcl-ds T1227 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1227 FROM T1227 LIMIT 1;

theCharVar = 'Hello from P2830';
dsply theCharVar;
callp localProc();
P572();
P2365();
P783();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2830 in the procedure';
end-proc;