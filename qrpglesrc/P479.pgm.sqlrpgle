**free

ctl-opt dftactgrp(*no);

dcl-pi P479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P302.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'

dcl-ds T122 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T122 FROM T122 LIMIT 1;

theCharVar = 'Hello from P479';
dsply theCharVar;
callp localProc();
P302();
P138();
P375();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P479 in the procedure';
end-proc;