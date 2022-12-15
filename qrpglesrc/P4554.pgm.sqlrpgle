**free

ctl-opt dftactgrp(*no);

dcl-pi P4554;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3102.rpgleinc'
/copy 'qrpgleref/P1477.rpgleinc'
/copy 'qrpgleref/P2121.rpgleinc'

dcl-ds theTable extname('T270') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T270 LIMIT 1;

theCharVar = 'Hello from P4554';
dsply theCharVar;
callp localProc();
P3102();
P1477();
P2121();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4554 in the procedure';
end-proc;