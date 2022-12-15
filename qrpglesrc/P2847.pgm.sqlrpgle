**free

ctl-opt dftactgrp(*no);

dcl-pi P2847;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2429.rpgleinc'
/copy 'qrpgleref/P997.rpgleinc'
/copy 'qrpgleref/P1940.rpgleinc'

dcl-ds theTable extname('T1285') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1285 LIMIT 1;

theCharVar = 'Hello from P2847';
dsply theCharVar;
callp localProc();
P2429();
P997();
P1940();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2847 in the procedure';
end-proc;