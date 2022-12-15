**free

ctl-opt dftactgrp(*no);

dcl-pi P1413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P330.rpgleinc'
/copy 'qrpgleref/P1072.rpgleinc'
/copy 'qrpgleref/P1311.rpgleinc'

dcl-ds theTable extname('T991') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T991 LIMIT 1;

theCharVar = 'Hello from P1413';
dsply theCharVar;
callp localProc();
P330();
P1072();
P1311();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1413 in the procedure';
end-proc;