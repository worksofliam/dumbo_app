**free

ctl-opt dftactgrp(*no);

dcl-pi P3049;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1325.rpgleinc'
/copy 'qrpgleref/P1194.rpgleinc'
/copy 'qrpgleref/P356.rpgleinc'

dcl-ds theTable extname('T1483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1483 LIMIT 1;

theCharVar = 'Hello from P3049';
dsply theCharVar;
callp localProc();
P1325();
P1194();
P356();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3049 in the procedure';
end-proc;