**free

ctl-opt dftactgrp(*no);

dcl-pi P3440;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2783.rpgleinc'
/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P580.rpgleinc'

dcl-ds T448 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T448 FROM T448 LIMIT 1;

theCharVar = 'Hello from P3440';
dsply theCharVar;
callp localProc();
P2783();
P647();
P580();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3440 in the procedure';
end-proc;