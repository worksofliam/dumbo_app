**free

ctl-opt dftactgrp(*no);

dcl-pi P280;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'

dcl-ds theTable extname('T972') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T972 LIMIT 1;

theCharVar = 'Hello from P280';
dsply theCharVar;
callp localProc();
P70();
P75();
P265();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P280 in the procedure';
end-proc;