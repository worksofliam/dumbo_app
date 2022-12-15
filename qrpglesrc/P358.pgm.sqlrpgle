**free

ctl-opt dftactgrp(*no);

dcl-pi P358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'

dcl-ds T436 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T436 FROM T436 LIMIT 1;

theCharVar = 'Hello from P358';
dsply theCharVar;
callp localProc();
P284();
P81();
P329();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P358 in the procedure';
end-proc;