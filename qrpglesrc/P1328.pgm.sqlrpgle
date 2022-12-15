**free

ctl-opt dftactgrp(*no);

dcl-pi P1328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1229.rpgleinc'
/copy 'qrpgleref/P1258.rpgleinc'
/copy 'qrpgleref/P1210.rpgleinc'

dcl-ds theTable extname('T1011') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1011 LIMIT 1;

theCharVar = 'Hello from P1328';
dsply theCharVar;
callp localProc();
P1229();
P1258();
P1210();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1328 in the procedure';
end-proc;