**free

ctl-opt dftactgrp(*no);

dcl-pi P3389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1050.rpgleinc'
/copy 'qrpgleref/P2156.rpgleinc'
/copy 'qrpgleref/P619.rpgleinc'

dcl-ds theTable extname('T432') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T432 LIMIT 1;

theCharVar = 'Hello from P3389';
dsply theCharVar;
callp localProc();
P1050();
P2156();
P619();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3389 in the procedure';
end-proc;