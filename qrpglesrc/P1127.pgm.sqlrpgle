**free

ctl-opt dftactgrp(*no);

dcl-pi P1127;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P664.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'

dcl-ds theTable extname('T185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T185 LIMIT 1;

theCharVar = 'Hello from P1127';
dsply theCharVar;
callp localProc();
P258();
P664();
P117();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1127 in the procedure';
end-proc;