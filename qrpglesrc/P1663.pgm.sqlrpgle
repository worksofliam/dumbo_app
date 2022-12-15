**free

ctl-opt dftactgrp(*no);

dcl-pi P1663;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1306.rpgleinc'
/copy 'qrpgleref/P1263.rpgleinc'
/copy 'qrpgleref/P717.rpgleinc'

dcl-ds theTable extname('T847') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T847 LIMIT 1;

theCharVar = 'Hello from P1663';
dsply theCharVar;
callp localProc();
P1306();
P1263();
P717();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1663 in the procedure';
end-proc;