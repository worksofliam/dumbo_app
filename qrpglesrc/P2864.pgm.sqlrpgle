**free

ctl-opt dftactgrp(*no);

dcl-pi P2864;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1092.rpgleinc'
/copy 'qrpgleref/P2709.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'

dcl-ds theTable extname('T692') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T692 LIMIT 1;

theCharVar = 'Hello from P2864';
dsply theCharVar;
callp localProc();
P1092();
P2709();
P305();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2864 in the procedure';
end-proc;