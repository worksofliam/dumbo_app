**free

ctl-opt dftactgrp(*no);

dcl-pi P409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T177 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T177 FROM T177 LIMIT 1;

theCharVar = 'Hello from P409';
dsply theCharVar;
callp localProc();
P275();
P95();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P409 in the procedure';
end-proc;