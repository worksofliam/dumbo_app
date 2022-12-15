**free

ctl-opt dftactgrp(*no);

dcl-pi P2838;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1985.rpgleinc'
/copy 'qrpgleref/P2224.rpgleinc'
/copy 'qrpgleref/P1733.rpgleinc'

dcl-ds theTable extname('T608') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T608 LIMIT 1;

theCharVar = 'Hello from P2838';
dsply theCharVar;
callp localProc();
P1985();
P2224();
P1733();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2838 in the procedure';
end-proc;