**free

ctl-opt dftactgrp(*no);

dcl-pi P1109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P982.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'

dcl-ds theTable extname('T1564') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1564 LIMIT 1;

theCharVar = 'Hello from P1109';
dsply theCharVar;
callp localProc();
P982();
P443();
P533();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1109 in the procedure';
end-proc;