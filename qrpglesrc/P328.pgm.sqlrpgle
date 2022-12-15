**free

ctl-opt dftactgrp(*no);

dcl-pi P328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'

dcl-ds theTable extname('T1077') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1077 LIMIT 1;

theCharVar = 'Hello from P328';
dsply theCharVar;
callp localProc();
P164();
P162();
P218();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P328 in the procedure';
end-proc;