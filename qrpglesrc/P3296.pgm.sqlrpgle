**free

ctl-opt dftactgrp(*no);

dcl-pi P3296;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1547.rpgleinc'
/copy 'qrpgleref/P2085.rpgleinc'
/copy 'qrpgleref/P2457.rpgleinc'

dcl-ds theTable extname('T1356') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1356 LIMIT 1;

theCharVar = 'Hello from P3296';
dsply theCharVar;
callp localProc();
P1547();
P2085();
P2457();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3296 in the procedure';
end-proc;