**free

ctl-opt dftactgrp(*no);

dcl-pi P436;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds theTable extname('T1471') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1471 LIMIT 1;

theCharVar = 'Hello from P436';
dsply theCharVar;
callp localProc();
P94();
P162();
P244();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P436 in the procedure';
end-proc;