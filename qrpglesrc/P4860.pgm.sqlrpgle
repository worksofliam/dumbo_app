**free

ctl-opt dftactgrp(*no);

dcl-pi P4860;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P933.rpgleinc'
/copy 'qrpgleref/P4160.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'

dcl-ds T218 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T218 FROM T218 LIMIT 1;

theCharVar = 'Hello from P4860';
dsply theCharVar;
callp localProc();
P933();
P4160();
P375();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4860 in the procedure';
end-proc;