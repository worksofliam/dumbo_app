**free

ctl-opt dftactgrp(*no);

dcl-pi P4227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P1403.rpgleinc'

dcl-ds T162 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T162 FROM T162 LIMIT 1;

theCharVar = 'Hello from P4227';
dsply theCharVar;
callp localProc();
P45();
P274();
P1403();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4227 in the procedure';
end-proc;