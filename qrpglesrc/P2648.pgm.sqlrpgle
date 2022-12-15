**free

ctl-opt dftactgrp(*no);

dcl-pi P2648;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1614.rpgleinc'
/copy 'qrpgleref/P1441.rpgleinc'
/copy 'qrpgleref/P2465.rpgleinc'

dcl-ds theTable extname('T784') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T784 LIMIT 1;

theCharVar = 'Hello from P2648';
dsply theCharVar;
callp localProc();
P1614();
P1441();
P2465();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2648 in the procedure';
end-proc;