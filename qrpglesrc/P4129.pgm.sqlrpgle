**free

ctl-opt dftactgrp(*no);

dcl-pi P4129;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2593.rpgleinc'
/copy 'qrpgleref/P3074.rpgleinc'
/copy 'qrpgleref/P206.rpgleinc'

dcl-ds theTable extname('T381') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T381 LIMIT 1;

theCharVar = 'Hello from P4129';
dsply theCharVar;
callp localProc();
P2593();
P3074();
P206();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4129 in the procedure';
end-proc;