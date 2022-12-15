**free

ctl-opt dftactgrp(*no);

dcl-pi P348;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'

dcl-ds T451 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T451 FROM T451 LIMIT 1;

theCharVar = 'Hello from P348';
dsply theCharVar;
callp localProc();
P75();
P216();
P256();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P348 in the procedure';
end-proc;