**free

ctl-opt dftactgrp(*no);

dcl-pi P121;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds T201 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T201 FROM T201 LIMIT 1;

theCharVar = 'Hello from P121';
dsply theCharVar;
callp localProc();
P23();
P46();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P121 in the procedure';
end-proc;