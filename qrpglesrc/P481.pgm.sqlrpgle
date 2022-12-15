**free

ctl-opt dftactgrp(*no);

dcl-pi P481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'

dcl-ds theTable extname('T601') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T601 LIMIT 1;

theCharVar = 'Hello from P481';
dsply theCharVar;
callp localProc();
P372();
P130();
P382();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P481 in the procedure';
end-proc;