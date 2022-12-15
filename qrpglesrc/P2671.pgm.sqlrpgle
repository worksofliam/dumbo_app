**free

ctl-opt dftactgrp(*no);

dcl-pi P2671;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1082.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P2362.rpgleinc'

dcl-ds theTable extname('T463') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T463 LIMIT 1;

theCharVar = 'Hello from P2671';
dsply theCharVar;
callp localProc();
P1082();
P50();
P2362();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2671 in the procedure';
end-proc;