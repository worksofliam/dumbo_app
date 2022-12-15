**free

ctl-opt dftactgrp(*no);

dcl-pi P901;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'

dcl-ds theTable extname('T1816') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1816 LIMIT 1;

theCharVar = 'Hello from P901';
dsply theCharVar;
callp localProc();
P507();
P441();
P326();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P901 in the procedure';
end-proc;