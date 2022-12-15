**free

ctl-opt dftactgrp(*no);

dcl-pi P4743;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4007.rpgleinc'
/copy 'qrpgleref/P4126.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'

dcl-ds theTable extname('T1273') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1273 LIMIT 1;

theCharVar = 'Hello from P4743';
dsply theCharVar;
callp localProc();
P4007();
P4126();
P248();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4743 in the procedure';
end-proc;