**free

ctl-opt dftactgrp(*no);

dcl-pi P2827;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1421.rpgleinc'
/copy 'qrpgleref/P2483.rpgleinc'
/copy 'qrpgleref/P2571.rpgleinc'

dcl-ds theTable extname('T918') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T918 LIMIT 1;

theCharVar = 'Hello from P2827';
dsply theCharVar;
callp localProc();
P1421();
P2483();
P2571();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2827 in the procedure';
end-proc;