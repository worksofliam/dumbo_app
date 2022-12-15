**free

ctl-opt dftactgrp(*no);

dcl-pi P1140;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P1068.rpgleinc'

dcl-ds theTable extname('T452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T452 LIMIT 1;

theCharVar = 'Hello from P1140';
dsply theCharVar;
callp localProc();
P88();
P433();
P1068();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1140 in the procedure';
end-proc;