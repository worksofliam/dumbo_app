**free

ctl-opt dftactgrp(*no);

dcl-pi P1408;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'
/copy 'qrpgleref/P841.rpgleinc'

dcl-ds theTable extname('T139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T139 LIMIT 1;

theCharVar = 'Hello from P1408';
dsply theCharVar;
callp localProc();
P957();
P838();
P841();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1408 in the procedure';
end-proc;