**free

ctl-opt dftactgrp(*no);

dcl-pi P1352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'

dcl-ds theTable extname('T135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T135 LIMIT 1;

theCharVar = 'Hello from P1352';
dsply theCharVar;
callp localProc();
P109();
P318();
P484();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1352 in the procedure';
end-proc;