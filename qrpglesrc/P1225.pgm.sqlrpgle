**free

ctl-opt dftactgrp(*no);

dcl-pi P1225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P882.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P772.rpgleinc'

dcl-ds T433 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T433 FROM T433 LIMIT 1;

theCharVar = 'Hello from P1225';
dsply theCharVar;
callp localProc();
P882();
P241();
P772();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1225 in the procedure';
end-proc;