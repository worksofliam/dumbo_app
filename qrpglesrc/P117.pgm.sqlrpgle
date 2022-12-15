**free

ctl-opt dftactgrp(*no);

dcl-pi P117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T1631') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1631 LIMIT 1;

theCharVar = 'Hello from P117';
dsply theCharVar;
callp localProc();
P24();
P108();
P50();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P117 in the procedure';
end-proc;