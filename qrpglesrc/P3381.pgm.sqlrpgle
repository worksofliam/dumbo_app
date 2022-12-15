**free

ctl-opt dftactgrp(*no);

dcl-pi P3381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P808.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P3171.rpgleinc'

dcl-ds theTable extname('T810') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T810 LIMIT 1;

theCharVar = 'Hello from P3381';
dsply theCharVar;
callp localProc();
P808();
P240();
P3171();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3381 in the procedure';
end-proc;