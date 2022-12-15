**free

ctl-opt dftactgrp(*no);

dcl-pi P3028;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P1755.rpgleinc'
/copy 'qrpgleref/P2591.rpgleinc'

dcl-ds theTable extname('T1852') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1852 LIMIT 1;

theCharVar = 'Hello from P3028';
dsply theCharVar;
callp localProc();
P225();
P1755();
P2591();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3028 in the procedure';
end-proc;