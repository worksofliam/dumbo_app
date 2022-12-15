**free

ctl-opt dftactgrp(*no);

dcl-pi P2346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2312.rpgleinc'
/copy 'qrpgleref/P1699.rpgleinc'
/copy 'qrpgleref/P1082.rpgleinc'

dcl-ds theTable extname('T1720') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1720 LIMIT 1;

theCharVar = 'Hello from P2346';
dsply theCharVar;
callp localProc();
P2312();
P1699();
P1082();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2346 in the procedure';
end-proc;