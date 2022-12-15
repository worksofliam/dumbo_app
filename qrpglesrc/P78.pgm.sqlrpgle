**free

ctl-opt dftactgrp(*no);

dcl-pi P78;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'

dcl-ds theTable extname('T1338') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1338 LIMIT 1;

theCharVar = 'Hello from P78';
dsply theCharVar;
callp localProc();
P39();
P5();
P76();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P78 in the procedure';
end-proc;