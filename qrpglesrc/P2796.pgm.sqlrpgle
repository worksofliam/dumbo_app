**free

ctl-opt dftactgrp(*no);

dcl-pi P2796;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P2332.rpgleinc'
/copy 'qrpgleref/P2309.rpgleinc'

dcl-ds theTable extname('T528') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T528 LIMIT 1;

theCharVar = 'Hello from P2796';
dsply theCharVar;
callp localProc();
P186();
P2332();
P2309();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2796 in the procedure';
end-proc;