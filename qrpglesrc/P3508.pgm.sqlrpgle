**free

ctl-opt dftactgrp(*no);

dcl-pi P3508;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P697.rpgleinc'
/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'

dcl-ds T361 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T361 FROM T361 LIMIT 1;

theCharVar = 'Hello from P3508';
dsply theCharVar;
callp localProc();
P697();
P268();
P604();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3508 in the procedure';
end-proc;