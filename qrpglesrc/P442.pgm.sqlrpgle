**free

ctl-opt dftactgrp(*no);

dcl-pi P442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds T377 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T377 FROM T377 LIMIT 1;

theCharVar = 'Hello from P442';
dsply theCharVar;
callp localProc();
P87();
P123();
P6();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P442 in the procedure';
end-proc;