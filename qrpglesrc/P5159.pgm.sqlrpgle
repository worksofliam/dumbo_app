**free

ctl-opt dftactgrp(*no);

dcl-pi P5159;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2986.rpgleinc'
/copy 'qrpgleref/P2619.rpgleinc'
/copy 'qrpgleref/P2603.rpgleinc'

dcl-ds theTable extname('T1734') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1734 LIMIT 1;

theCharVar = 'Hello from P5159';
dsply theCharVar;
callp localProc();
P2986();
P2619();
P2603();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5159 in the procedure';
end-proc;