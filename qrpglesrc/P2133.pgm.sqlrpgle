**free

ctl-opt dftactgrp(*no);

dcl-pi P2133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1077.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'
/copy 'qrpgleref/P363.rpgleinc'

dcl-ds theTable extname('T547') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T547 LIMIT 1;

theCharVar = 'Hello from P2133';
dsply theCharVar;
callp localProc();
P1077();
P399();
P363();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2133 in the procedure';
end-proc;