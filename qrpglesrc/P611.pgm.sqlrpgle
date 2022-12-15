**free

ctl-opt dftactgrp(*no);

dcl-pi P611;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds T1578 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1578 FROM T1578 LIMIT 1;

theCharVar = 'Hello from P611';
dsply theCharVar;
callp localProc();
P459();
P372();
P64();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P611 in the procedure';
end-proc;