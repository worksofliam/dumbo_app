**free

ctl-opt dftactgrp(*no);

dcl-pi P251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'

dcl-ds theTable extname('T33') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T33 LIMIT 1;

theCharVar = 'Hello from P251';
dsply theCharVar;
callp localProc();
P54();
P83();
P240();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P251 in the procedure';
end-proc;