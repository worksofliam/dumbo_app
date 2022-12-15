**free

ctl-opt dftactgrp(*no);

dcl-pi P698;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'

dcl-ds T1505 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1505 FROM T1505 LIMIT 1;

theCharVar = 'Hello from P698';
dsply theCharVar;
callp localProc();
P367();
P551();
P532();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P698 in the procedure';
end-proc;