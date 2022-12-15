**free

ctl-opt dftactgrp(*no);

dcl-pi P4069;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1180.rpgleinc'
/copy 'qrpgleref/P2246.rpgleinc'
/copy 'qrpgleref/P1066.rpgleinc'

dcl-ds theTable extname('T1679') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1679 LIMIT 1;

theCharVar = 'Hello from P4069';
dsply theCharVar;
callp localProc();
P1180();
P2246();
P1066();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4069 in the procedure';
end-proc;