**free

ctl-opt dftactgrp(*no);

dcl-pi P2948;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1428.rpgleinc'
/copy 'qrpgleref/P2381.rpgleinc'
/copy 'qrpgleref/P2329.rpgleinc'

dcl-ds theTable extname('T357') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T357 LIMIT 1;

theCharVar = 'Hello from P2948';
dsply theCharVar;
callp localProc();
P1428();
P2381();
P2329();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2948 in the procedure';
end-proc;