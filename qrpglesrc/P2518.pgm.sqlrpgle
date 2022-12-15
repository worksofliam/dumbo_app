**free

ctl-opt dftactgrp(*no);

dcl-pi P2518;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P485.rpgleinc'
/copy 'qrpgleref/P1279.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'

dcl-ds theTable extname('T130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T130 LIMIT 1;

theCharVar = 'Hello from P2518';
dsply theCharVar;
callp localProc();
P485();
P1279();
P561();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2518 in the procedure';
end-proc;