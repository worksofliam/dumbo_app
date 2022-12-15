**free

ctl-opt dftactgrp(*no);

dcl-pi P96;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T398') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T398 LIMIT 1;

theCharVar = 'Hello from P96';
dsply theCharVar;
callp localProc();
P9();
P49();
P54();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P96 in the procedure';
end-proc;