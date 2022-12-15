**free

ctl-opt dftactgrp(*no);

dcl-pi P797;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P584.rpgleinc'

dcl-ds T1843 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1843 FROM T1843 LIMIT 1;

theCharVar = 'Hello from P797';
dsply theCharVar;
callp localProc();
P222();
P9();
P584();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P797 in the procedure';
end-proc;