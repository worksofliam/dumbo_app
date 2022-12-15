**free

ctl-opt dftactgrp(*no);

dcl-pi P4051;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3641.rpgleinc'
/copy 'qrpgleref/P3687.rpgleinc'
/copy 'qrpgleref/P3105.rpgleinc'

dcl-ds T1600 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1600 FROM T1600 LIMIT 1;

theCharVar = 'Hello from P4051';
dsply theCharVar;
callp localProc();
P3641();
P3687();
P3105();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4051 in the procedure';
end-proc;