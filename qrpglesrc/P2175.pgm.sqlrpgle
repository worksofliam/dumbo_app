**free

ctl-opt dftactgrp(*no);

dcl-pi P2175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1634.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P876.rpgleinc'

dcl-ds theTable extname('T77') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T77 LIMIT 1;

theCharVar = 'Hello from P2175';
dsply theCharVar;
callp localProc();
P1634();
P264();
P876();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2175 in the procedure';
end-proc;