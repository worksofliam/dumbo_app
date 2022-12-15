**free

ctl-opt dftactgrp(*no);

dcl-pi P4169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P1758.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds theTable extname('T1774') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1774 LIMIT 1;

theCharVar = 'Hello from P4169';
dsply theCharVar;
callp localProc();
P224();
P1758();
P125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4169 in the procedure';
end-proc;