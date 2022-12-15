**free

ctl-opt dftactgrp(*no);

dcl-pi P3606;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1156.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P2665.rpgleinc'

dcl-ds theTable extname('T1124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1124 LIMIT 1;

theCharVar = 'Hello from P3606';
dsply theCharVar;
callp localProc();
P1156();
P180();
P2665();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3606 in the procedure';
end-proc;