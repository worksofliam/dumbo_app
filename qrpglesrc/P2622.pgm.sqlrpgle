**free

ctl-opt dftactgrp(*no);

dcl-pi P2622;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1910.rpgleinc'
/copy 'qrpgleref/P1196.rpgleinc'
/copy 'qrpgleref/P1876.rpgleinc'

dcl-ds theTable extname('T715') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T715 LIMIT 1;

theCharVar = 'Hello from P2622';
dsply theCharVar;
callp localProc();
P1910();
P1196();
P1876();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2622 in the procedure';
end-proc;