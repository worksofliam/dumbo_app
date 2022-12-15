**free

ctl-opt dftactgrp(*no);

dcl-pi P282;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds theTable extname('T48') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T48 LIMIT 1;

theCharVar = 'Hello from P282';
dsply theCharVar;
callp localProc();
P114();
P150();
P244();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P282 in the procedure';
end-proc;