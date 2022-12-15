**free

ctl-opt dftactgrp(*no);

dcl-pi P3672;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P617.rpgleinc'
/copy 'qrpgleref/P3199.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds theTable extname('T1768') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1768 LIMIT 1;

theCharVar = 'Hello from P3672';
dsply theCharVar;
callp localProc();
P617();
P3199();
P9();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3672 in the procedure';
end-proc;