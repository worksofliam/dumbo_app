**free

ctl-opt dftactgrp(*no);

dcl-pi P1937;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P1703.rpgleinc'

dcl-ds theTable extname('T951') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T951 LIMIT 1;

theCharVar = 'Hello from P1937';
dsply theCharVar;
callp localProc();
P162();
P564();
P1703();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1937 in the procedure';
end-proc;