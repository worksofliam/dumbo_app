**free

ctl-opt dftactgrp(*no);

dcl-pi P2407;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1580.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P456.rpgleinc'

dcl-ds theTable extname('T1588') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1588 LIMIT 1;

theCharVar = 'Hello from P2407';
dsply theCharVar;
callp localProc();
P1580();
P199();
P456();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2407 in the procedure';
end-proc;