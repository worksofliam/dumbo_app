**free

ctl-opt dftactgrp(*no);

dcl-pi P2368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P2325.rpgleinc'
/copy 'qrpgleref/P2186.rpgleinc'

dcl-ds T463 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T463 FROM T463 LIMIT 1;

theCharVar = 'Hello from P2368';
dsply theCharVar;
callp localProc();
P255();
P2325();
P2186();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2368 in the procedure';
end-proc;