**free

ctl-opt dftactgrp(*no);

dcl-pi P523;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'

dcl-ds theTable extname('T106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T106 LIMIT 1;

theCharVar = 'Hello from P523';
dsply theCharVar;
callp localProc();
P192();
P86();
P334();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P523 in the procedure';
end-proc;