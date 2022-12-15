**free

ctl-opt dftactgrp(*no);

dcl-pi P462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'

dcl-ds T299 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T299 FROM T299 LIMIT 1;

theCharVar = 'Hello from P462';
dsply theCharVar;
callp localProc();
P397();
P7();
P322();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P462 in the procedure';
end-proc;