**free

ctl-opt dftactgrp(*no);

dcl-pi P1398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P930.rpgleinc'
/copy 'qrpgleref/P1251.rpgleinc'
/copy 'qrpgleref/P973.rpgleinc'

dcl-ds T1259 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1259 FROM T1259 LIMIT 1;

theCharVar = 'Hello from P1398';
dsply theCharVar;
callp localProc();
P930();
P1251();
P973();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1398 in the procedure';
end-proc;