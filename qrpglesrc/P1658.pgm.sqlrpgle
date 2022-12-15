**free

ctl-opt dftactgrp(*no);

dcl-pi P1658;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1601.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds theTable extname('T1011') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1011 LIMIT 1;

theCharVar = 'Hello from P1658';
dsply theCharVar;
callp localProc();
P1601();
P598();
P162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1658 in the procedure';
end-proc;