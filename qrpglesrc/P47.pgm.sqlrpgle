**free

ctl-opt dftactgrp(*no);

dcl-pi P47;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds theTable extname('T1549') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1549 LIMIT 1;

theCharVar = 'Hello from P47';
dsply theCharVar;
callp localProc();
P3();
P5();
P33();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P47 in the procedure';
end-proc;