**free

ctl-opt dftactgrp(*no);

dcl-pi P2510;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1800.rpgleinc'
/copy 'qrpgleref/P2023.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'

dcl-ds theTable extname('T779') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T779 LIMIT 1;

theCharVar = 'Hello from P2510';
dsply theCharVar;
callp localProc();
P1800();
P2023();
P694();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2510 in the procedure';
end-proc;