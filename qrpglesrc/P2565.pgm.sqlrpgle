**free

ctl-opt dftactgrp(*no);

dcl-pi P2565;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P1526.rpgleinc'
/copy 'qrpgleref/P1154.rpgleinc'

dcl-ds theTable extname('T1645') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1645 LIMIT 1;

theCharVar = 'Hello from P2565';
dsply theCharVar;
callp localProc();
P162();
P1526();
P1154();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2565 in the procedure';
end-proc;