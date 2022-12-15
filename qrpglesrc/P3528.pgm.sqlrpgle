**free

ctl-opt dftactgrp(*no);

dcl-pi P3528;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P1847.rpgleinc'
/copy 'qrpgleref/P2245.rpgleinc'

dcl-ds theTable extname('T1196') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1196 LIMIT 1;

theCharVar = 'Hello from P3528';
dsply theCharVar;
callp localProc();
P293();
P1847();
P2245();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3528 in the procedure';
end-proc;