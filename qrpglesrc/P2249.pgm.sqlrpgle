**free

ctl-opt dftactgrp(*no);

dcl-pi P2249;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1742.rpgleinc'
/copy 'qrpgleref/P1214.rpgleinc'
/copy 'qrpgleref/P1520.rpgleinc'

dcl-ds theTable extname('T976') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T976 LIMIT 1;

theCharVar = 'Hello from P2249';
dsply theCharVar;
callp localProc();
P1742();
P1214();
P1520();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2249 in the procedure';
end-proc;