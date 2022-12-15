**free

ctl-opt dftactgrp(*no);

dcl-pi P149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds theTable extname('T555') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T555 LIMIT 1;

theCharVar = 'Hello from P149';
dsply theCharVar;
callp localProc();
P5();
P0();
P83();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P149 in the procedure';
end-proc;