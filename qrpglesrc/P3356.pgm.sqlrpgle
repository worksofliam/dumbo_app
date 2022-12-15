**free

ctl-opt dftactgrp(*no);

dcl-pi P3356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1845.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P2683.rpgleinc'

dcl-ds theTable extname('T882') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T882 LIMIT 1;

theCharVar = 'Hello from P3356';
dsply theCharVar;
callp localProc();
P1845();
P385();
P2683();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3356 in the procedure';
end-proc;