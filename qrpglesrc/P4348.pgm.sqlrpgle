**free

ctl-opt dftactgrp(*no);

dcl-pi P4348;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2655.rpgleinc'
/copy 'qrpgleref/P1665.rpgleinc'
/copy 'qrpgleref/P1666.rpgleinc'

dcl-ds theTable extname('T1227') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1227 LIMIT 1;

theCharVar = 'Hello from P4348';
dsply theCharVar;
callp localProc();
P2655();
P1665();
P1666();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4348 in the procedure';
end-proc;