**free

ctl-opt dftactgrp(*no);

dcl-pi P4405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P2858.rpgleinc'
/copy 'qrpgleref/P625.rpgleinc'

dcl-ds T1072 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1072 FROM T1072 LIMIT 1;

theCharVar = 'Hello from P4405';
dsply theCharVar;
callp localProc();
P580();
P2858();
P625();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4405 in the procedure';
end-proc;