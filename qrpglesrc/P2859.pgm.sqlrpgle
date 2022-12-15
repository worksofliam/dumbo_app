**free

ctl-opt dftactgrp(*no);

dcl-pi P2859;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P981.rpgleinc'
/copy 'qrpgleref/P2389.rpgleinc'
/copy 'qrpgleref/P1665.rpgleinc'

dcl-ds theTable extname('T941') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T941 LIMIT 1;

theCharVar = 'Hello from P2859';
dsply theCharVar;
callp localProc();
P981();
P2389();
P1665();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2859 in the procedure';
end-proc;