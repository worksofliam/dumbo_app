**free

ctl-opt dftactgrp(*no);

dcl-pi P1097;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P888.rpgleinc'
/copy 'qrpgleref/P663.rpgleinc'

dcl-ds theTable extname('T433') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T433 LIMIT 1;

theCharVar = 'Hello from P1097';
dsply theCharVar;
callp localProc();
P383();
P888();
P663();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1097 in the procedure';
end-proc;