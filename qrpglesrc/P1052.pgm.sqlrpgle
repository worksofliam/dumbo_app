**free

ctl-opt dftactgrp(*no);

dcl-pi P1052;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P1028.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds theTable extname('T134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T134 LIMIT 1;

theCharVar = 'Hello from P1052';
dsply theCharVar;
callp localProc();
P331();
P1028();
P244();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1052 in the procedure';
end-proc;