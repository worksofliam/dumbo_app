**free

ctl-opt dftactgrp(*no);

dcl-pi P1383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P952.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P482.rpgleinc'

dcl-ds T143 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T143 FROM T143 LIMIT 1;

theCharVar = 'Hello from P1383';
dsply theCharVar;
callp localProc();
P952();
P186();
P482();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1383 in the procedure';
end-proc;