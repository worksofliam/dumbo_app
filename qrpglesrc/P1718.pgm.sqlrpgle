**free

ctl-opt dftactgrp(*no);

dcl-pi P1718;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P1228.rpgleinc'
/copy 'qrpgleref/P513.rpgleinc'

dcl-ds theTable extname('T1076') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1076 LIMIT 1;

theCharVar = 'Hello from P1718';
dsply theCharVar;
callp localProc();
P573();
P1228();
P513();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1718 in the procedure';
end-proc;