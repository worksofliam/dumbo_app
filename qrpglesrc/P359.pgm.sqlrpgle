**free

ctl-opt dftactgrp(*no);

dcl-pi P359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds T164 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T164 FROM T164 LIMIT 1;

theCharVar = 'Hello from P359';
dsply theCharVar;
callp localProc();
P246();
P350();
P348();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P359 in the procedure';
end-proc;