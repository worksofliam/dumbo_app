**free

ctl-opt dftactgrp(*no);

dcl-pi P635;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds T1033 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1033 FROM T1033 LIMIT 1;

theCharVar = 'Hello from P635';
dsply theCharVar;
callp localProc();
P262();
P531();
P23();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P635 in the procedure';
end-proc;