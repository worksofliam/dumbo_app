**free

ctl-opt dftactgrp(*no);

dcl-pi P3398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P1257.rpgleinc'
/copy 'qrpgleref/P471.rpgleinc'

dcl-ds T482 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T482 FROM T482 LIMIT 1;

theCharVar = 'Hello from P3398';
dsply theCharVar;
callp localProc();
P182();
P1257();
P471();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3398 in the procedure';
end-proc;