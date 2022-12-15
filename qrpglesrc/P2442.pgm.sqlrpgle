**free

ctl-opt dftactgrp(*no);

dcl-pi P2442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1977.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P981.rpgleinc'

dcl-ds theTable extname('T1401') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1401 LIMIT 1;

theCharVar = 'Hello from P2442';
dsply theCharVar;
callp localProc();
P1977();
P210();
P981();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2442 in the procedure';
end-proc;