**free

ctl-opt dftactgrp(*no);

dcl-pi P129;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'

dcl-ds T114 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T114 FROM T114 LIMIT 1;

theCharVar = 'Hello from P129';
dsply theCharVar;
callp localProc();
P17();
P2();
P124();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P129 in the procedure';
end-proc;