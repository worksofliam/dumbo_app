**free

ctl-opt dftactgrp(*no);

dcl-pi P4080;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P2199.rpgleinc'

dcl-ds T1430 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1430 FROM T1430 LIMIT 1;

theCharVar = 'Hello from P4080';
dsply theCharVar;
callp localProc();
P189();
P214();
P2199();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4080 in the procedure';
end-proc;