**free

ctl-opt dftactgrp(*no);

dcl-pi P1639;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1533.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'
/copy 'qrpgleref/P1161.rpgleinc'

dcl-ds theTable extname('T20') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T20 LIMIT 1;

theCharVar = 'Hello from P1639';
dsply theCharVar;
callp localProc();
P1533();
P401();
P1161();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1639 in the procedure';
end-proc;