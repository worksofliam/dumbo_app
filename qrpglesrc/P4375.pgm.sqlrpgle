**free

ctl-opt dftactgrp(*no);

dcl-pi P4375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2437.rpgleinc'
/copy 'qrpgleref/P1467.rpgleinc'
/copy 'qrpgleref/P539.rpgleinc'

dcl-ds theTable extname('T430') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T430 LIMIT 1;

theCharVar = 'Hello from P4375';
dsply theCharVar;
callp localProc();
P2437();
P1467();
P539();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4375 in the procedure';
end-proc;