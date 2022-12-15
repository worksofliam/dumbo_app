**free

ctl-opt dftactgrp(*no);

dcl-pi P406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds T277 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T277 FROM T277 LIMIT 1;

theCharVar = 'Hello from P406';
dsply theCharVar;
callp localProc();
P334();
P397();
P294();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P406 in the procedure';
end-proc;