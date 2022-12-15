**free

ctl-opt dftactgrp(*no);

dcl-pi P240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'

dcl-ds T207 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T207 FROM T207 LIMIT 1;

theCharVar = 'Hello from P240';
dsply theCharVar;
callp localProc();
P137();
P104();
P200();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P240 in the procedure';
end-proc;