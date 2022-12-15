**free

ctl-opt dftactgrp(*no);

dcl-pi P2900;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2730.rpgleinc'
/copy 'qrpgleref/P986.rpgleinc'
/copy 'qrpgleref/P2681.rpgleinc'

dcl-ds theTable extname('T1009') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1009 LIMIT 1;

theCharVar = 'Hello from P2900';
dsply theCharVar;
callp localProc();
P2730();
P986();
P2681();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2900 in the procedure';
end-proc;