**free

ctl-opt dftactgrp(*no);

dcl-pi P3329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2377.rpgleinc'
/copy 'qrpgleref/P1168.rpgleinc'
/copy 'qrpgleref/P1307.rpgleinc'

dcl-ds theTable extname('T801') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T801 LIMIT 1;

theCharVar = 'Hello from P3329';
dsply theCharVar;
callp localProc();
P2377();
P1168();
P1307();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3329 in the procedure';
end-proc;