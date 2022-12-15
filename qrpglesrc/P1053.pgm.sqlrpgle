**free

ctl-opt dftactgrp(*no);

dcl-pi P1053;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'

dcl-ds theTable extname('T114') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T114 LIMIT 1;

theCharVar = 'Hello from P1053';
dsply theCharVar;
callp localProc();
P177();
P307();
P134();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1053 in the procedure';
end-proc;