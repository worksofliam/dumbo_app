**free

ctl-opt dftactgrp(*no);

dcl-pi P3128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3102.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P2410.rpgleinc'

dcl-ds theTable extname('T550') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T550 LIMIT 1;

theCharVar = 'Hello from P3128';
dsply theCharVar;
callp localProc();
P3102();
P90();
P2410();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3128 in the procedure';
end-proc;