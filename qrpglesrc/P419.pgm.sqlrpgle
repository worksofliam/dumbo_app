**free

ctl-opt dftactgrp(*no);

dcl-pi P419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds theTable extname('T192') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T192 LIMIT 1;

theCharVar = 'Hello from P419';
dsply theCharVar;
callp localProc();
P30();
P243();
P386();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P419 in the procedure';
end-proc;