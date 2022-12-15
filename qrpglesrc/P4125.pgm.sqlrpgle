**free

ctl-opt dftactgrp(*no);

dcl-pi P4125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P2231.rpgleinc'
/copy 'qrpgleref/P1376.rpgleinc'

dcl-ds theTable extname('T1452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1452 LIMIT 1;

theCharVar = 'Hello from P4125';
dsply theCharVar;
callp localProc();
P632();
P2231();
P1376();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4125 in the procedure';
end-proc;