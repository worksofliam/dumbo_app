**free

ctl-opt dftactgrp(*no);

dcl-pi P2971;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2761.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P2687.rpgleinc'

dcl-ds T874 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T874 FROM T874 LIMIT 1;

theCharVar = 'Hello from P2971';
dsply theCharVar;
callp localProc();
P2761();
P49();
P2687();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2971 in the procedure';
end-proc;