**free

ctl-opt dftactgrp(*no);

dcl-pi P984;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'

dcl-ds T269 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T269 FROM T269 LIMIT 1;

theCharVar = 'Hello from P984';
dsply theCharVar;
callp localProc();
P818();
P797();
P93();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P984 in the procedure';
end-proc;