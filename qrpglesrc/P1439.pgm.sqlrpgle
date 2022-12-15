**free

ctl-opt dftactgrp(*no);

dcl-pi P1439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1017.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'
/copy 'qrpgleref/P873.rpgleinc'

dcl-ds theTable extname('T99') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T99 LIMIT 1;

theCharVar = 'Hello from P1439';
dsply theCharVar;
callp localProc();
P1017();
P426();
P873();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1439 in the procedure';
end-proc;