**free

ctl-opt dftactgrp(*no);

dcl-pi P4497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P3479.rpgleinc'
/copy 'qrpgleref/P1288.rpgleinc'

dcl-ds theTable extname('T1126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1126 LIMIT 1;

theCharVar = 'Hello from P4497';
dsply theCharVar;
callp localProc();
P27();
P3479();
P1288();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4497 in the procedure';
end-proc;