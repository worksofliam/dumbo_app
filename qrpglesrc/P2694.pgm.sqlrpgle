**free

ctl-opt dftactgrp(*no);

dcl-pi P2694;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P1832.rpgleinc'
/copy 'qrpgleref/P2650.rpgleinc'

dcl-ds theTable extname('T557') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T557 LIMIT 1;

theCharVar = 'Hello from P2694';
dsply theCharVar;
callp localProc();
P443();
P1832();
P2650();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2694 in the procedure';
end-proc;