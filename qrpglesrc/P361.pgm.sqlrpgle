**free

ctl-opt dftactgrp(*no);

dcl-pi P361;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P261.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds T1322 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1322 FROM T1322 LIMIT 1;

theCharVar = 'Hello from P361';
dsply theCharVar;
callp localProc();
P261();
P295();
P40();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P361 in the procedure';
end-proc;