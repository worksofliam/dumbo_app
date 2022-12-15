**free

ctl-opt dftactgrp(*no);

dcl-pi P371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'

dcl-ds T63 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T63 FROM T63 LIMIT 1;

theCharVar = 'Hello from P371';
dsply theCharVar;
callp localProc();
P64();
P122();
P135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P371 in the procedure';
end-proc;