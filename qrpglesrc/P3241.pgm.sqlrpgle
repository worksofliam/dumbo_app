**free

ctl-opt dftactgrp(*no);

dcl-pi P3241;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1978.rpgleinc'
/copy 'qrpgleref/P1238.rpgleinc'
/copy 'qrpgleref/P860.rpgleinc'

dcl-ds theTable extname('T479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T479 LIMIT 1;

theCharVar = 'Hello from P3241';
dsply theCharVar;
callp localProc();
P1978();
P1238();
P860();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3241 in the procedure';
end-proc;