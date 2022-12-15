**free

ctl-opt dftactgrp(*no);

dcl-pi P1217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P749.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'

dcl-ds theTable extname('T1749') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1749 LIMIT 1;

theCharVar = 'Hello from P1217';
dsply theCharVar;
callp localProc();
P97();
P749();
P147();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1217 in the procedure';
end-proc;