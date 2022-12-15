**free

ctl-opt dftactgrp(*no);

dcl-pi P445;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'

dcl-ds T522 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T522 FROM T522 LIMIT 1;

theCharVar = 'Hello from P445';
dsply theCharVar;
callp localProc();
P97();
P188();
P116();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P445 in the procedure';
end-proc;