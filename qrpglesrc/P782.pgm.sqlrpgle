**free

ctl-opt dftactgrp(*no);

dcl-pi P782;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P610.rpgleinc'
/copy 'qrpgleref/P673.rpgleinc'

dcl-ds T1586 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1586 FROM T1586 LIMIT 1;

theCharVar = 'Hello from P782';
dsply theCharVar;
callp localProc();
P682();
P610();
P673();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P782 in the procedure';
end-proc;