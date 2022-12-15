**free

ctl-opt dftactgrp(*no);

dcl-pi P3058;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2302.rpgleinc'
/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P2691.rpgleinc'

dcl-ds theTable extname('T1237') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1237 LIMIT 1;

theCharVar = 'Hello from P3058';
dsply theCharVar;
callp localProc();
P2302();
P963();
P2691();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3058 in the procedure';
end-proc;