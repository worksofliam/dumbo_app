**free

ctl-opt dftactgrp(*no);

dcl-pi P1278;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P669.rpgleinc'
/copy 'qrpgleref/P965.rpgleinc'

dcl-ds theTable extname('T453') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T453 LIMIT 1;

theCharVar = 'Hello from P1278';
dsply theCharVar;
callp localProc();
P296();
P669();
P965();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1278 in the procedure';
end-proc;