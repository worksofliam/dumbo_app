**free

ctl-opt dftactgrp(*no);

dcl-pi P3746;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3146.rpgleinc'
/copy 'qrpgleref/P3459.rpgleinc'
/copy 'qrpgleref/P3184.rpgleinc'

dcl-ds T442 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T442 FROM T442 LIMIT 1;

theCharVar = 'Hello from P3746';
dsply theCharVar;
callp localProc();
P3146();
P3459();
P3184();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3746 in the procedure';
end-proc;