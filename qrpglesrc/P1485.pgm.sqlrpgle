**free

ctl-opt dftactgrp(*no);

dcl-pi P1485;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1032.rpgleinc'
/copy 'qrpgleref/P644.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'

dcl-ds theTable extname('T14') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T14 LIMIT 1;

theCharVar = 'Hello from P1485';
dsply theCharVar;
callp localProc();
P1032();
P644();
P122();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1485 in the procedure';
end-proc;