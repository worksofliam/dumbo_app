**free

ctl-opt dftactgrp(*no);

dcl-pi P4074;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P1454.rpgleinc'
/copy 'qrpgleref/P3291.rpgleinc'

dcl-ds theTable extname('T899') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T899 LIMIT 1;

theCharVar = 'Hello from P4074';
dsply theCharVar;
callp localProc();
P585();
P1454();
P3291();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4074 in the procedure';
end-proc;