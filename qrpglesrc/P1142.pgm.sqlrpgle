**free

ctl-opt dftactgrp(*no);

dcl-pi P1142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds T1180 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1180 FROM T1180 LIMIT 1;

theCharVar = 'Hello from P1142';
dsply theCharVar;
callp localProc();
P259();
P729();
P15();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1142 in the procedure';
end-proc;