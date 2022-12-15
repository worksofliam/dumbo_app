**free

ctl-opt dftactgrp(*no);

dcl-pi P287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'

dcl-ds T79 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T79 FROM T79 LIMIT 1;

theCharVar = 'Hello from P287';
dsply theCharVar;
callp localProc();
P32();
P225();
P84();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P287 in the procedure';
end-proc;