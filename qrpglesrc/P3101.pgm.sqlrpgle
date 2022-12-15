**free

ctl-opt dftactgrp(*no);

dcl-pi P3101;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1597.rpgleinc'
/copy 'qrpgleref/P1110.rpgleinc'
/copy 'qrpgleref/P1448.rpgleinc'

dcl-ds theTable extname('T1067') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1067 LIMIT 1;

theCharVar = 'Hello from P3101';
dsply theCharVar;
callp localProc();
P1597();
P1110();
P1448();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3101 in the procedure';
end-proc;