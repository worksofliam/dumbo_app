**free

ctl-opt dftactgrp(*no);

dcl-pi P3197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1822.rpgleinc'
/copy 'qrpgleref/P1543.rpgleinc'
/copy 'qrpgleref/P2097.rpgleinc'

dcl-ds theTable extname('T484') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T484 LIMIT 1;

theCharVar = 'Hello from P3197';
dsply theCharVar;
callp localProc();
P1822();
P1543();
P2097();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3197 in the procedure';
end-proc;