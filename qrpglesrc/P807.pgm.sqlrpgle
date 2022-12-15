**free

ctl-opt dftactgrp(*no);

dcl-pi P807;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'

dcl-ds T1010 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1010 FROM T1010 LIMIT 1;

theCharVar = 'Hello from P807';
dsply theCharVar;
callp localProc();
P158();
P95();
P515();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P807 in the procedure';
end-proc;