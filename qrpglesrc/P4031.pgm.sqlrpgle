**free

ctl-opt dftactgrp(*no);

dcl-pi P4031;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1255.rpgleinc'
/copy 'qrpgleref/P2385.rpgleinc'
/copy 'qrpgleref/P2431.rpgleinc'

dcl-ds T790 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T790 FROM T790 LIMIT 1;

theCharVar = 'Hello from P4031';
dsply theCharVar;
callp localProc();
P1255();
P2385();
P2431();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4031 in the procedure';
end-proc;