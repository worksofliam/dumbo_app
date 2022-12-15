**free

ctl-opt dftactgrp(*no);

dcl-pi P2225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P852.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P1434.rpgleinc'

dcl-ds theTable extname('T292') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T292 LIMIT 1;

theCharVar = 'Hello from P2225';
dsply theCharVar;
callp localProc();
P852();
P228();
P1434();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2225 in the procedure';
end-proc;