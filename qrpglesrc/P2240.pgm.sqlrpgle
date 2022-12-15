**free

ctl-opt dftactgrp(*no);

dcl-pi P2240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P716.rpgleinc'
/copy 'qrpgleref/P1655.rpgleinc'
/copy 'qrpgleref/P1777.rpgleinc'

dcl-ds theTable extname('T133') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T133 LIMIT 1;

theCharVar = 'Hello from P2240';
dsply theCharVar;
callp localProc();
P716();
P1655();
P1777();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2240 in the procedure';
end-proc;