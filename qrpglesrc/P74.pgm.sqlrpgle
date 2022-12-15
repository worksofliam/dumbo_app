**free

ctl-opt dftactgrp(*no);

dcl-pi P74;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds T1235 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1235 FROM T1235 LIMIT 1;

theCharVar = 'Hello from P74';
dsply theCharVar;
callp localProc();
P39();
P42();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P74 in the procedure';
end-proc;