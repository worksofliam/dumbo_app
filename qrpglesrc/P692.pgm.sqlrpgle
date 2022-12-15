**free

ctl-opt dftactgrp(*no);

dcl-pi P692;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P575.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'

dcl-ds T1382 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1382 FROM T1382 LIMIT 1;

theCharVar = 'Hello from P692';
dsply theCharVar;
callp localProc();
P118();
P575();
P274();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P692 in the procedure';
end-proc;