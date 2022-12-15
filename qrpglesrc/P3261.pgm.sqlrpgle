**free

ctl-opt dftactgrp(*no);

dcl-pi P3261;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3147.rpgleinc'
/copy 'qrpgleref/P2971.rpgleinc'
/copy 'qrpgleref/P1262.rpgleinc'

dcl-ds theTable extname('T1068') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1068 LIMIT 1;

theCharVar = 'Hello from P3261';
dsply theCharVar;
callp localProc();
P3147();
P2971();
P1262();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3261 in the procedure';
end-proc;