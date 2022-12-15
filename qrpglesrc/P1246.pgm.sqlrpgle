**free

ctl-opt dftactgrp(*no);

dcl-pi P1246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T99') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T99 LIMIT 1;

theCharVar = 'Hello from P1246';
dsply theCharVar;
callp localProc();
P281();
P90();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1246 in the procedure';
end-proc;