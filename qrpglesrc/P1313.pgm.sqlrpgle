**free

ctl-opt dftactgrp(*no);

dcl-pi P1313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1084.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P839.rpgleinc'

dcl-ds theTable extname('T105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T105 LIMIT 1;

theCharVar = 'Hello from P1313';
dsply theCharVar;
callp localProc();
P1084();
P598();
P839();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1313 in the procedure';
end-proc;