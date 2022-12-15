**free

ctl-opt dftactgrp(*no);

dcl-pi P2238;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1974.rpgleinc'
/copy 'qrpgleref/P1628.rpgleinc'
/copy 'qrpgleref/P653.rpgleinc'

dcl-ds T1524 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1524 FROM T1524 LIMIT 1;

theCharVar = 'Hello from P2238';
dsply theCharVar;
callp localProc();
P1974();
P1628();
P653();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2238 in the procedure';
end-proc;