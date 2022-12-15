**free

ctl-opt dftactgrp(*no);

dcl-pi P1322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P615.rpgleinc'
/copy 'qrpgleref/P766.rpgleinc'
/copy 'qrpgleref/P300.rpgleinc'

dcl-ds theTable extname('T978') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T978 LIMIT 1;

theCharVar = 'Hello from P1322';
dsply theCharVar;
callp localProc();
P615();
P766();
P300();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1322 in the procedure';
end-proc;