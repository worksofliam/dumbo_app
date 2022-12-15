**free

ctl-opt dftactgrp(*no);

dcl-pi P1140;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1089.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P641.rpgleinc'

dcl-ds theTable extname('T854') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T854 LIMIT 1;

theCharVar = 'Hello from P1140';
dsply theCharVar;
callp localProc();
P1089();
P150();
P641();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1140 in the procedure';
end-proc;