**free

ctl-opt dftactgrp(*no);

dcl-pi P1162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P777.rpgleinc'

dcl-ds theTable extname('T225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T225 LIMIT 1;

theCharVar = 'Hello from P1162';
dsply theCharVar;
callp localProc();
P133();
P277();
P777();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1162 in the procedure';
end-proc;