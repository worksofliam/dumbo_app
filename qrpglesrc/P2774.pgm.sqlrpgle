**free

ctl-opt dftactgrp(*no);

dcl-pi P2774;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2560.rpgleinc'
/copy 'qrpgleref/P1003.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'

dcl-ds theTable extname('T363') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T363 LIMIT 1;

theCharVar = 'Hello from P2774';
dsply theCharVar;
callp localProc();
P2560();
P1003();
P427();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2774 in the procedure';
end-proc;