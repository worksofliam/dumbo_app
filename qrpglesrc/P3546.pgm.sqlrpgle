**free

ctl-opt dftactgrp(*no);

dcl-pi P3546;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3205.rpgleinc'
/copy 'qrpgleref/P2225.rpgleinc'
/copy 'qrpgleref/P1588.rpgleinc'

dcl-ds theTable extname('T1086') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1086 LIMIT 1;

theCharVar = 'Hello from P3546';
dsply theCharVar;
callp localProc();
P3205();
P2225();
P1588();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3546 in the procedure';
end-proc;