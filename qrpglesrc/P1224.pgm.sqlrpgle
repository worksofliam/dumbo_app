**free

ctl-opt dftactgrp(*no);

dcl-pi P1224;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P489.rpgleinc'
/copy 'qrpgleref/P777.rpgleinc'
/copy 'qrpgleref/P1160.rpgleinc'

dcl-ds theTable extname('T445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T445 LIMIT 1;

theCharVar = 'Hello from P1224';
dsply theCharVar;
callp localProc();
P489();
P777();
P1160();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1224 in the procedure';
end-proc;