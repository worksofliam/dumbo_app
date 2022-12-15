**free

ctl-opt dftactgrp(*no);

dcl-pi P3203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P601.rpgleinc'
/copy 'qrpgleref/P1783.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'

dcl-ds theTable extname('T1609') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1609 LIMIT 1;

theCharVar = 'Hello from P3203';
dsply theCharVar;
callp localProc();
P601();
P1783();
P549();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3203 in the procedure';
end-proc;