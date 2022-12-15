**free

ctl-opt dftactgrp(*no);

dcl-pi P4311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3610.rpgleinc'
/copy 'qrpgleref/P4266.rpgleinc'
/copy 'qrpgleref/P3822.rpgleinc'

dcl-ds theTable extname('T1538') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1538 LIMIT 1;

theCharVar = 'Hello from P4311';
dsply theCharVar;
callp localProc();
P3610();
P4266();
P3822();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4311 in the procedure';
end-proc;