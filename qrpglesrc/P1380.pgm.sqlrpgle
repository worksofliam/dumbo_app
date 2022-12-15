**free

ctl-opt dftactgrp(*no);

dcl-pi P1380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P1104.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'

dcl-ds theTable extname('T199') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T199 LIMIT 1;

theCharVar = 'Hello from P1380';
dsply theCharVar;
callp localProc();
P481();
P1104();
P316();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1380 in the procedure';
end-proc;