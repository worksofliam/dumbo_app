**free

ctl-opt dftactgrp(*no);

dcl-pi P888;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'

dcl-ds T203 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T203 FROM T203 LIMIT 1;

theCharVar = 'Hello from P888';
dsply theCharVar;
callp localProc();
P394();
P858();
P302();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P888 in the procedure';
end-proc;