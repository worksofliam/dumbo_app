**free

ctl-opt dftactgrp(*no);

dcl-pi P3370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P607.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P1066.rpgleinc'

dcl-ds T930 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T930 FROM T930 LIMIT 1;

theCharVar = 'Hello from P3370';
dsply theCharVar;
callp localProc();
P607();
P349();
P1066();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3370 in the procedure';
end-proc;