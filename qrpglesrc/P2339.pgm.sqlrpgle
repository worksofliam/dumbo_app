**free

ctl-opt dftactgrp(*no);

dcl-pi P2339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P2044.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds T175 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T175 FROM T175 LIMIT 1;

theCharVar = 'Hello from P2339';
dsply theCharVar;
callp localProc();
P265();
P2044();
P379();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2339 in the procedure';
end-proc;