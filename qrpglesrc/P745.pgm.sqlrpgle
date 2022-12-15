**free

ctl-opt dftactgrp(*no);

dcl-pi P745;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P597.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P474.rpgleinc'

dcl-ds T983 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T983 FROM T983 LIMIT 1;

theCharVar = 'Hello from P745';
dsply theCharVar;
callp localProc();
P597();
P362();
P474();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P745 in the procedure';
end-proc;