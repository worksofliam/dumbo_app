**free

ctl-opt dftactgrp(*no);

dcl-pi P469;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'

dcl-ds T102 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T102 FROM T102 LIMIT 1;

theCharVar = 'Hello from P469';
dsply theCharVar;
callp localProc();
P58();
P271();
P337();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P469 in the procedure';
end-proc;