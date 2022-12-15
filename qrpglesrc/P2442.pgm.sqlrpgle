**free

ctl-opt dftactgrp(*no);

dcl-pi P2442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P825.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P2402.rpgleinc'

dcl-ds T257 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T257 FROM T257 LIMIT 1;

theCharVar = 'Hello from P2442';
dsply theCharVar;
callp localProc();
P825();
P199();
P2402();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2442 in the procedure';
end-proc;