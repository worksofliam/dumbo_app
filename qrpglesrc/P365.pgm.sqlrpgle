**free

ctl-opt dftactgrp(*no);

dcl-pi P365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P363.rpgleinc'

dcl-ds T176 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T176 FROM T176 LIMIT 1;

theCharVar = 'Hello from P365';
dsply theCharVar;
callp localProc();
P337();
P301();
P363();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P365 in the procedure';
end-proc;