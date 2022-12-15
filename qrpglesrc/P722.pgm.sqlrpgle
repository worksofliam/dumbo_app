**free

ctl-opt dftactgrp(*no);

dcl-pi P722;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P714.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'

dcl-ds T1749 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1749 FROM T1749 LIMIT 1;

theCharVar = 'Hello from P722';
dsply theCharVar;
callp localProc();
P714();
P8();
P546();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P722 in the procedure';
end-proc;