**free

ctl-opt dftactgrp(*no);

dcl-pi P1972;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P933.rpgleinc'
/copy 'qrpgleref/P1494.rpgleinc'
/copy 'qrpgleref/P1865.rpgleinc'

dcl-ds theTable extname('T1151') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1151 LIMIT 1;

theCharVar = 'Hello from P1972';
dsply theCharVar;
callp localProc();
P933();
P1494();
P1865();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1972 in the procedure';
end-proc;