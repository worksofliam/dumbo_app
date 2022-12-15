**free

ctl-opt dftactgrp(*no);

dcl-pi P1797;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P1487.rpgleinc'
/copy 'qrpgleref/P1796.rpgleinc'

dcl-ds T394 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T394 FROM T394 LIMIT 1;

theCharVar = 'Hello from P1797';
dsply theCharVar;
callp localProc();
P396();
P1487();
P1796();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1797 in the procedure';
end-proc;