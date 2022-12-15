**free

ctl-opt dftactgrp(*no);

dcl-pi P1295;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P863.rpgleinc'
/copy 'qrpgleref/P994.rpgleinc'

dcl-ds T294 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T294 FROM T294 LIMIT 1;

theCharVar = 'Hello from P1295';
dsply theCharVar;
callp localProc();
P329();
P863();
P994();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1295 in the procedure';
end-proc;