**free

ctl-opt dftactgrp(*no);

dcl-pi P512;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P307.rpgleinc'

dcl-ds theTable extname('T1237') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1237 LIMIT 1;

theCharVar = 'Hello from P512';
dsply theCharVar;
callp localProc();
P359();
P258();
P307();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P512 in the procedure';
end-proc;