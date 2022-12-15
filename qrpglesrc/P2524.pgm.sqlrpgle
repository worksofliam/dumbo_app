**free

ctl-opt dftactgrp(*no);

dcl-pi P2524;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1448.rpgleinc'
/copy 'qrpgleref/P2130.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'

dcl-ds theTable extname('T1835') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1835 LIMIT 1;

theCharVar = 'Hello from P2524';
dsply theCharVar;
callp localProc();
P1448();
P2130();
P638();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2524 in the procedure';
end-proc;