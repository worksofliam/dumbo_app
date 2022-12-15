**free

ctl-opt dftactgrp(*no);

dcl-pi P753;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P677.rpgleinc'

dcl-ds T202 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T202 FROM T202 LIMIT 1;

theCharVar = 'Hello from P753';
dsply theCharVar;
callp localProc();
P460();
P465();
P677();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P753 in the procedure';
end-proc;