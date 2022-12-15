**free

ctl-opt dftactgrp(*no);

dcl-pi P3939;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P2075.rpgleinc'
/copy 'qrpgleref/P3182.rpgleinc'

dcl-ds theTable extname('T1195') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1195 LIMIT 1;

theCharVar = 'Hello from P3939';
dsply theCharVar;
callp localProc();
P241();
P2075();
P3182();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3939 in the procedure';
end-proc;