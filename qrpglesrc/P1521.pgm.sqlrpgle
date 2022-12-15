**free

ctl-opt dftactgrp(*no);

dcl-pi P1521;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P850.rpgleinc'
/copy 'qrpgleref/P1291.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'

dcl-ds theTable extname('T457') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T457 LIMIT 1;

theCharVar = 'Hello from P1521';
dsply theCharVar;
callp localProc();
P850();
P1291();
P47();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1521 in the procedure';
end-proc;