**free

ctl-opt dftactgrp(*no);

dcl-pi P1696;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P579.rpgleinc'
/copy 'qrpgleref/P363.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds theTable extname('T128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T128 LIMIT 1;

theCharVar = 'Hello from P1696';
dsply theCharVar;
callp localProc();
P579();
P363();
P340();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1696 in the procedure';
end-proc;