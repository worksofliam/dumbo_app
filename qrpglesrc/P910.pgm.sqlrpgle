**free

ctl-opt dftactgrp(*no);

dcl-pi P910;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P577.rpgleinc'
/copy 'qrpgleref/P614.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'

dcl-ds theTable extname('T105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T105 LIMIT 1;

theCharVar = 'Hello from P910';
dsply theCharVar;
callp localProc();
P577();
P614();
P290();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P910 in the procedure';
end-proc;