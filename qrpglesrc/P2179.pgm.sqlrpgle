**free

ctl-opt dftactgrp(*no);

dcl-pi P2179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1829.rpgleinc'
/copy 'qrpgleref/P1793.rpgleinc'
/copy 'qrpgleref/P456.rpgleinc'

dcl-ds theTable extname('T1827') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1827 LIMIT 1;

theCharVar = 'Hello from P2179';
dsply theCharVar;
callp localProc();
P1829();
P1793();
P456();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2179 in the procedure';
end-proc;