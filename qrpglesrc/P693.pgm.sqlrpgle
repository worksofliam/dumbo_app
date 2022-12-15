**free

ctl-opt dftactgrp(*no);

dcl-pi P693;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T75') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T75 LIMIT 1;

theCharVar = 'Hello from P693';
dsply theCharVar;
callp localProc();
P177();
P494();
P50();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P693 in the procedure';
end-proc;