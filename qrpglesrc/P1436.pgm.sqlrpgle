**free

ctl-opt dftactgrp(*no);

dcl-pi P1436;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1416.rpgleinc'
/copy 'qrpgleref/P743.rpgleinc'
/copy 'qrpgleref/P721.rpgleinc'

dcl-ds theTable extname('T147') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T147 LIMIT 1;

theCharVar = 'Hello from P1436';
dsply theCharVar;
callp localProc();
P1416();
P743();
P721();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1436 in the procedure';
end-proc;