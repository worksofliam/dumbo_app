**free

ctl-opt dftactgrp(*no);

dcl-pi P1636;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P809.rpgleinc'
/copy 'qrpgleref/P1126.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'

dcl-ds theTable extname('T893') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T893 LIMIT 1;

theCharVar = 'Hello from P1636';
dsply theCharVar;
callp localProc();
P809();
P1126();
P532();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1636 in the procedure';
end-proc;