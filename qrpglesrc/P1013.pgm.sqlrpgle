**free

ctl-opt dftactgrp(*no);

dcl-pi P1013;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P752.rpgleinc'
/copy 'qrpgleref/P490.rpgleinc'
/copy 'qrpgleref/P885.rpgleinc'

dcl-ds T1034 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1034 FROM T1034 LIMIT 1;

theCharVar = 'Hello from P1013';
dsply theCharVar;
callp localProc();
P752();
P490();
P885();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1013 in the procedure';
end-proc;