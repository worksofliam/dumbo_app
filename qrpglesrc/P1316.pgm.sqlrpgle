**free

ctl-opt dftactgrp(*no);

dcl-pi P1316;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P691.rpgleinc'
/copy 'qrpgleref/P1005.rpgleinc'
/copy 'qrpgleref/P1167.rpgleinc'

dcl-ds theTable extname('T17') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T17 LIMIT 1;

theCharVar = 'Hello from P1316';
dsply theCharVar;
callp localProc();
P691();
P1005();
P1167();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1316 in the procedure';
end-proc;