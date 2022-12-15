**free

ctl-opt dftactgrp(*no);

dcl-pi P3020;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P767.rpgleinc'
/copy 'qrpgleref/P1660.rpgleinc'
/copy 'qrpgleref/P2183.rpgleinc'

dcl-ds theTable extname('T793') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T793 LIMIT 1;

theCharVar = 'Hello from P3020';
dsply theCharVar;
callp localProc();
P767();
P1660();
P2183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3020 in the procedure';
end-proc;