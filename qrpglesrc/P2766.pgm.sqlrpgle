**free

ctl-opt dftactgrp(*no);

dcl-pi P2766;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P653.rpgleinc'
/copy 'qrpgleref/P2348.rpgleinc'
/copy 'qrpgleref/P1144.rpgleinc'

dcl-ds theTable extname('T423') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T423 LIMIT 1;

theCharVar = 'Hello from P2766';
dsply theCharVar;
callp localProc();
P653();
P2348();
P1144();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2766 in the procedure';
end-proc;