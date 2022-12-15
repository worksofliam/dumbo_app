**free

ctl-opt dftactgrp(*no);

dcl-pi P31;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T399') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T399 LIMIT 1;

theCharVar = 'Hello from P31';
dsply theCharVar;
callp localProc();
P17();
P5();
P19();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P31 in the procedure';
end-proc;