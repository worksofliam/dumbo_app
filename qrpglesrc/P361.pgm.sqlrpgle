**free

ctl-opt dftactgrp(*no);

dcl-pi P361;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'

dcl-ds T1091 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1091 FROM T1091 LIMIT 1;

theCharVar = 'Hello from P361';
dsply theCharVar;
callp localProc();
P45();
P279();
P351();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P361 in the procedure';
end-proc;