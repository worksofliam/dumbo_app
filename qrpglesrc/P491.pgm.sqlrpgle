**free

ctl-opt dftactgrp(*no);

dcl-pi P491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'

dcl-ds T167 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T167 FROM T167 LIMIT 1;

theCharVar = 'Hello from P491';
dsply theCharVar;
callp localProc();
P307();
P92();
P122();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P491 in the procedure';
end-proc;