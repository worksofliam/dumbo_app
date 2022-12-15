**free

ctl-opt dftactgrp(*no);

dcl-pi P4944;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P1174.rpgleinc'
/copy 'qrpgleref/P4558.rpgleinc'

dcl-ds theTable extname('T1685') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1685 LIMIT 1;

theCharVar = 'Hello from P4944';
dsply theCharVar;
callp localProc();
P301();
P1174();
P4558();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4944 in the procedure';
end-proc;