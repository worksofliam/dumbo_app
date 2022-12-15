**free

ctl-opt dftactgrp(*no);

dcl-pi P283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds theTable extname('T210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T210 LIMIT 1;

theCharVar = 'Hello from P283';
dsply theCharVar;
callp localProc();
P129();
P248();
P102();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P283 in the procedure';
end-proc;