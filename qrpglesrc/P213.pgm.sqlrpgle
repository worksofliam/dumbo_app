**free

ctl-opt dftactgrp(*no);

dcl-pi P213;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds theTable extname('T1242') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1242 LIMIT 1;

theCharVar = 'Hello from P213';
dsply theCharVar;
callp localProc();
P145();
P142();
P118();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P213 in the procedure';
end-proc;