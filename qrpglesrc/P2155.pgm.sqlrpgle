**free

ctl-opt dftactgrp(*no);

dcl-pi P2155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1529.rpgleinc'
/copy 'qrpgleref/P600.rpgleinc'
/copy 'qrpgleref/P880.rpgleinc'

dcl-ds theTable extname('T444') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T444 LIMIT 1;

theCharVar = 'Hello from P2155';
dsply theCharVar;
callp localProc();
P1529();
P600();
P880();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2155 in the procedure';
end-proc;