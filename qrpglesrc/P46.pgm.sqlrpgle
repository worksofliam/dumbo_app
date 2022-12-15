**free

ctl-opt dftactgrp(*no);

dcl-pi P46;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds T1851 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1851 FROM T1851 LIMIT 1;

theCharVar = 'Hello from P46';
dsply theCharVar;
callp localProc();
P5();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P46 in the procedure';
end-proc;