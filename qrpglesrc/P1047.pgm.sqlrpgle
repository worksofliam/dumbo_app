**free

ctl-opt dftactgrp(*no);

dcl-pi P1047;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P675.rpgleinc'
/copy 'qrpgleref/P1005.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'

dcl-ds T460 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T460 FROM T460 LIMIT 1;

theCharVar = 'Hello from P1047';
dsply theCharVar;
callp localProc();
P675();
P1005();
P697();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1047 in the procedure';
end-proc;