**free

ctl-opt dftactgrp(*no);

dcl-pi P1624;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1008.rpgleinc'
/copy 'qrpgleref/P958.rpgleinc'
/copy 'qrpgleref/P748.rpgleinc'

dcl-ds theTable extname('T736') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T736 LIMIT 1;

theCharVar = 'Hello from P1624';
dsply theCharVar;
callp localProc();
P1008();
P958();
P748();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1624 in the procedure';
end-proc;