**free

ctl-opt dftactgrp(*no);

dcl-pi P328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'

dcl-ds T213 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T213 FROM T213 LIMIT 1;

theCharVar = 'Hello from P328';
dsply theCharVar;
callp localProc();
P305();
P92();
P214();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P328 in the procedure';
end-proc;