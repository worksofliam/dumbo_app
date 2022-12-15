**free

ctl-opt dftactgrp(*no);

dcl-pi P306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T107') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T107 LIMIT 1;

theCharVar = 'Hello from P306';
dsply theCharVar;
callp localProc();
P87();
P56();
P2();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P306 in the procedure';
end-proc;