**free

ctl-opt dftactgrp(*no);

dcl-pi P1616;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P932.rpgleinc'
/copy 'qrpgleref/P1515.rpgleinc'
/copy 'qrpgleref/P1173.rpgleinc'

dcl-ds theTable extname('T1142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1142 LIMIT 1;

theCharVar = 'Hello from P1616';
dsply theCharVar;
callp localProc();
P932();
P1515();
P1173();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1616 in the procedure';
end-proc;