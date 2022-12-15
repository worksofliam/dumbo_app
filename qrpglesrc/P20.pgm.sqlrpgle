**free

ctl-opt dftactgrp(*no);

dcl-pi P20;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds theTable extname('T3') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T3 LIMIT 1;

theCharVar = 'Hello from P20';
dsply theCharVar;
callp localProc();
P19();
P5();
P17();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P20 in the procedure';
end-proc;