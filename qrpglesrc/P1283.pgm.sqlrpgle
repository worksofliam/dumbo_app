**free

ctl-opt dftactgrp(*no);

dcl-pi P1283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P916.rpgleinc'

dcl-ds theTable extname('T210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T210 LIMIT 1;

theCharVar = 'Hello from P1283';
dsply theCharVar;
callp localProc();
P359();
P596();
P916();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1283 in the procedure';
end-proc;