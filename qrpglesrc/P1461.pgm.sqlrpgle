**free

ctl-opt dftactgrp(*no);

dcl-pi P1461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P370.rpgleinc'
/copy 'qrpgleref/P1305.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'

dcl-ds theTable extname('T450') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T450 LIMIT 1;

theCharVar = 'Hello from P1461';
dsply theCharVar;
callp localProc();
P370();
P1305();
P270();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1461 in the procedure';
end-proc;