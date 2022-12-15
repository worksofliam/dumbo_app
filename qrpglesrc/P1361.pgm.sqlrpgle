**free

ctl-opt dftactgrp(*no);

dcl-pi P1361;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P678.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'

dcl-ds T1448 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1448 FROM T1448 LIMIT 1;

theCharVar = 'Hello from P1361';
dsply theCharVar;
callp localProc();
P678();
P28();
P739();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1361 in the procedure';
end-proc;