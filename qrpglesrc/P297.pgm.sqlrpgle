**free

ctl-opt dftactgrp(*no);

dcl-pi P297;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'

dcl-ds theTable extname('T1664') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1664 LIMIT 1;

theCharVar = 'Hello from P297';
dsply theCharVar;
callp localProc();
P33();
P119();
P124();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P297 in the procedure';
end-proc;