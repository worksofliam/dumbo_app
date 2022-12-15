**free

ctl-opt dftactgrp(*no);

dcl-pi P2352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2011.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P1107.rpgleinc'

dcl-ds theTable extname('T128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T128 LIMIT 1;

theCharVar = 'Hello from P2352';
dsply theCharVar;
callp localProc();
P2011();
P371();
P1107();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2352 in the procedure';
end-proc;