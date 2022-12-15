**free

ctl-opt dftactgrp(*no);

dcl-pi P2616;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2043.rpgleinc'
/copy 'qrpgleref/P2092.rpgleinc'
/copy 'qrpgleref/P1675.rpgleinc'

dcl-ds theTable extname('T496') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T496 LIMIT 1;

theCharVar = 'Hello from P2616';
dsply theCharVar;
callp localProc();
P2043();
P2092();
P1675();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2616 in the procedure';
end-proc;