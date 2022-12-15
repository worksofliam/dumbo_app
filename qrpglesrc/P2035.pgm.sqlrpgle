**free

ctl-opt dftactgrp(*no);

dcl-pi P2035;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1527.rpgleinc'
/copy 'qrpgleref/P730.rpgleinc'
/copy 'qrpgleref/P840.rpgleinc'

dcl-ds theTable extname('T106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T106 LIMIT 1;

theCharVar = 'Hello from P2035';
dsply theCharVar;
callp localProc();
P1527();
P730();
P840();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2035 in the procedure';
end-proc;