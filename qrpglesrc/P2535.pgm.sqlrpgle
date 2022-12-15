**free

ctl-opt dftactgrp(*no);

dcl-pi P2535;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2410.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'

dcl-ds theTable extname('T313') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T313 LIMIT 1;

theCharVar = 'Hello from P2535';
dsply theCharVar;
callp localProc();
P2410();
P433();
P755();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2535 in the procedure';
end-proc;