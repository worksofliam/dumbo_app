**free

ctl-opt dftactgrp(*no);

dcl-pi P1711;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P1435.rpgleinc'
/copy 'qrpgleref/P1600.rpgleinc'

dcl-ds theTable extname('T526') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T526 LIMIT 1;

theCharVar = 'Hello from P1711';
dsply theCharVar;
callp localProc();
P223();
P1435();
P1600();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1711 in the procedure';
end-proc;