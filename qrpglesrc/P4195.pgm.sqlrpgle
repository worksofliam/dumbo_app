**free

ctl-opt dftactgrp(*no);

dcl-pi P4195;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P717.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'

dcl-ds theTable extname('T485') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T485 LIMIT 1;

theCharVar = 'Hello from P4195';
dsply theCharVar;
callp localProc();
P717();
P137();
P551();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4195 in the procedure';
end-proc;