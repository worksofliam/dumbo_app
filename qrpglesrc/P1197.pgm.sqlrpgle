**free

ctl-opt dftactgrp(*no);

dcl-pi P1197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'

dcl-ds theTable extname('T228') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T228 LIMIT 1;

theCharVar = 'Hello from P1197';
dsply theCharVar;
callp localProc();
P832();
P285();
P617();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1197 in the procedure';
end-proc;