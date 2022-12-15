**free

ctl-opt dftactgrp(*no);

dcl-pi P2252;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1829.rpgleinc'
/copy 'qrpgleref/P1777.rpgleinc'
/copy 'qrpgleref/P1658.rpgleinc'

dcl-ds theTable extname('T321') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T321 LIMIT 1;

theCharVar = 'Hello from P2252';
dsply theCharVar;
callp localProc();
P1829();
P1777();
P1658();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2252 in the procedure';
end-proc;