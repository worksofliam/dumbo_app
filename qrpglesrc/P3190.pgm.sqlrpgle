**free

ctl-opt dftactgrp(*no);

dcl-pi P3190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1259.rpgleinc'
/copy 'qrpgleref/P708.rpgleinc'
/copy 'qrpgleref/P1432.rpgleinc'

dcl-ds theTable extname('T370') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T370 LIMIT 1;

theCharVar = 'Hello from P3190';
dsply theCharVar;
callp localProc();
P1259();
P708();
P1432();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3190 in the procedure';
end-proc;