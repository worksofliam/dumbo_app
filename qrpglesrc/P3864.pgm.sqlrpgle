**free

ctl-opt dftactgrp(*no);

dcl-pi P3864;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3307.rpgleinc'
/copy 'qrpgleref/P1069.rpgleinc'
/copy 'qrpgleref/P2625.rpgleinc'

dcl-ds theTable extname('T1673') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1673 LIMIT 1;

theCharVar = 'Hello from P3864';
dsply theCharVar;
callp localProc();
P3307();
P1069();
P2625();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3864 in the procedure';
end-proc;