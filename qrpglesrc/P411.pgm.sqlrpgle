**free

ctl-opt dftactgrp(*no);

dcl-pi P411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'

dcl-ds T829 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T829 FROM T829 LIMIT 1;

theCharVar = 'Hello from P411';
dsply theCharVar;
callp localProc();
P143();
P150();
P362();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P411 in the procedure';
end-proc;