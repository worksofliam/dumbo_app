**free

ctl-opt dftactgrp(*no);

dcl-pi P1265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P848.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'

dcl-ds theTable extname('T362') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T362 LIMIT 1;

theCharVar = 'Hello from P1265';
dsply theCharVar;
callp localProc();
P488();
P848();
P193();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1265 in the procedure';
end-proc;