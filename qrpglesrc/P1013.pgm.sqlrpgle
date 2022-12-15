**free

ctl-opt dftactgrp(*no);

dcl-pi P1013;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P978.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds T99 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T99 FROM T99 LIMIT 1;

theCharVar = 'Hello from P1013';
dsply theCharVar;
callp localProc();
P320();
P978();
P127();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1013 in the procedure';
end-proc;