**free

ctl-opt dftactgrp(*no);

dcl-pi P1527;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P1359.rpgleinc'
/copy 'qrpgleref/P611.rpgleinc'

dcl-ds theTable extname('T931') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T931 LIMIT 1;

theCharVar = 'Hello from P1527';
dsply theCharVar;
callp localProc();
P60();
P1359();
P611();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1527 in the procedure';
end-proc;