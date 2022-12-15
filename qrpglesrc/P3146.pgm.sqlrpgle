**free

ctl-opt dftactgrp(*no);

dcl-pi P3146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P1621.rpgleinc'
/copy 'qrpgleref/P1378.rpgleinc'

dcl-ds theTable extname('T161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T161 LIMIT 1;

theCharVar = 'Hello from P3146';
dsply theCharVar;
callp localProc();
P135();
P1621();
P1378();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3146 in the procedure';
end-proc;