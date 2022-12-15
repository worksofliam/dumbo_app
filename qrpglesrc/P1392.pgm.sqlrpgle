**free

ctl-opt dftactgrp(*no);

dcl-pi P1392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1071.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P809.rpgleinc'

dcl-ds theTable extname('T1185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1185 LIMIT 1;

theCharVar = 'Hello from P1392';
dsply theCharVar;
callp localProc();
P1071();
P83();
P809();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1392 in the procedure';
end-proc;