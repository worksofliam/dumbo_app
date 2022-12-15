**free

ctl-opt dftactgrp(*no);

dcl-pi P2241;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1889.rpgleinc'
/copy 'qrpgleref/P1453.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'

dcl-ds theTable extname('T129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T129 LIMIT 1;

theCharVar = 'Hello from P2241';
dsply theCharVar;
callp localProc();
P1889();
P1453();
P189();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2241 in the procedure';
end-proc;