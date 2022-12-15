**free

ctl-opt dftactgrp(*no);

dcl-pi P918;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P752.rpgleinc'
/copy 'qrpgleref/P902.rpgleinc'

dcl-ds theTable extname('T475') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T475 LIMIT 1;

theCharVar = 'Hello from P918';
dsply theCharVar;
callp localProc();
P122();
P752();
P902();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P918 in the procedure';
end-proc;