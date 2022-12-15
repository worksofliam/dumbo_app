**free

ctl-opt dftactgrp(*no);

dcl-pi P3826;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2150.rpgleinc'
/copy 'qrpgleref/P2918.rpgleinc'
/copy 'qrpgleref/P2024.rpgleinc'

dcl-ds theTable extname('T304') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T304 LIMIT 1;

theCharVar = 'Hello from P3826';
dsply theCharVar;
callp localProc();
P2150();
P2918();
P2024();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3826 in the procedure';
end-proc;