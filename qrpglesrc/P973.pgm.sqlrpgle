**free

ctl-opt dftactgrp(*no);

dcl-pi P973;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P766.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'

dcl-ds theTable extname('T22') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T22 LIMIT 1;

theCharVar = 'Hello from P973';
dsply theCharVar;
callp localProc();
P43();
P766();
P385();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P973 in the procedure';
end-proc;