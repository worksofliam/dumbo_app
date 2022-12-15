**free

ctl-opt dftactgrp(*no);

dcl-pi P729;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P481.rpgleinc'

dcl-ds theTable extname('T158') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T158 LIMIT 1;

theCharVar = 'Hello from P729';
dsply theCharVar;
callp localProc();
P179();
P172();
P481();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P729 in the procedure';
end-proc;