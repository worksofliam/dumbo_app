**free

ctl-opt dftactgrp(*no);

dcl-pi P4252;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2206.rpgleinc'
/copy 'qrpgleref/P2273.rpgleinc'
/copy 'qrpgleref/P1329.rpgleinc'

dcl-ds theTable extname('T1543') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1543 LIMIT 1;

theCharVar = 'Hello from P4252';
dsply theCharVar;
callp localProc();
P2206();
P2273();
P1329();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4252 in the procedure';
end-proc;