**free

ctl-opt dftactgrp(*no);

dcl-pi P3070;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P1630.rpgleinc'
/copy 'qrpgleref/P1869.rpgleinc'

dcl-ds theTable extname('T1101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1101 LIMIT 1;

theCharVar = 'Hello from P3070';
dsply theCharVar;
callp localProc();
P231();
P1630();
P1869();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3070 in the procedure';
end-proc;