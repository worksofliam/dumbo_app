**free

ctl-opt dftactgrp(*no);

dcl-pi P1239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P1097.rpgleinc'
/copy 'qrpgleref/P1184.rpgleinc'

dcl-ds theTable extname('T440') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T440 LIMIT 1;

theCharVar = 'Hello from P1239';
dsply theCharVar;
callp localProc();
P358();
P1097();
P1184();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1239 in the procedure';
end-proc;