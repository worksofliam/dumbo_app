**free

ctl-opt dftactgrp(*no);

dcl-pi P3025;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1114.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P2479.rpgleinc'

dcl-ds theTable extname('T1699') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1699 LIMIT 1;

theCharVar = 'Hello from P3025';
dsply theCharVar;
callp localProc();
P1114();
P22();
P2479();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3025 in the procedure';
end-proc;