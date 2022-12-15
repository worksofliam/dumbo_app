**free

ctl-opt dftactgrp(*no);

dcl-pi P547;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P323.rpgleinc'

dcl-ds T80 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T80 FROM T80 LIMIT 1;

theCharVar = 'Hello from P547';
dsply theCharVar;
callp localProc();
P134();
P384();
P323();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P547 in the procedure';
end-proc;