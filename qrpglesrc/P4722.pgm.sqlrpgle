**free

ctl-opt dftactgrp(*no);

dcl-pi P4722;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1005.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P3149.rpgleinc'

dcl-ds theTable extname('T1550') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1550 LIMIT 1;

theCharVar = 'Hello from P4722';
dsply theCharVar;
callp localProc();
P1005();
P507();
P3149();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4722 in the procedure';
end-proc;