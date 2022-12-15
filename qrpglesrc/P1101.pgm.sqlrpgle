**free

ctl-opt dftactgrp(*no);

dcl-pi P1101;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'

dcl-ds theTable extname('T1792') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1792 LIMIT 1;

theCharVar = 'Hello from P1101';
dsply theCharVar;
callp localProc();
P507();
P179();
P503();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1101 in the procedure';
end-proc;