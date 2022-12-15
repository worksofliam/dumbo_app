**free

ctl-opt dftactgrp(*no);

dcl-pi P2567;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P1804.rpgleinc'
/copy 'qrpgleref/P2293.rpgleinc'

dcl-ds theTable extname('T1220') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1220 LIMIT 1;

theCharVar = 'Hello from P2567';
dsply theCharVar;
callp localProc();
P303();
P1804();
P2293();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2567 in the procedure';
end-proc;