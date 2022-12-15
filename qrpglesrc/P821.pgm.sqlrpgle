**free

ctl-opt dftactgrp(*no);

dcl-pi P821;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P567.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'

dcl-ds T445 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T445 FROM T445 LIMIT 1;

theCharVar = 'Hello from P821';
dsply theCharVar;
callp localProc();
P567();
P362();
P484();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P821 in the procedure';
end-proc;