**free

ctl-opt dftactgrp(*no);

dcl-pi P3676;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P574.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P1790.rpgleinc'

dcl-ds T498 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T498 FROM T498 LIMIT 1;

theCharVar = 'Hello from P3676';
dsply theCharVar;
callp localProc();
P574();
P512();
P1790();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3676 in the procedure';
end-proc;