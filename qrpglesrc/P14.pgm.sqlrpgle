**free

ctl-opt dftactgrp(*no);

dcl-pi P14;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T102') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T102 LIMIT 1;

theCharVar = 'Hello from P14';
dsply theCharVar;
callp localProc();
P9();
P6();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P14 in the procedure';
end-proc;