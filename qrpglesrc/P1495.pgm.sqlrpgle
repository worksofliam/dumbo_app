**free

ctl-opt dftactgrp(*no);

dcl-pi P1495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1097.rpgleinc'
/copy 'qrpgleref/P1211.rpgleinc'
/copy 'qrpgleref/P619.rpgleinc'

dcl-ds theTable extname('T517') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T517 LIMIT 1;

theCharVar = 'Hello from P1495';
dsply theCharVar;
callp localProc();
P1097();
P1211();
P619();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1495 in the procedure';
end-proc;