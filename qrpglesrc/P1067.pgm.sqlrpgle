**free

ctl-opt dftactgrp(*no);

dcl-pi P1067;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P784.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T207 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T207 FROM T207 LIMIT 1;

theCharVar = 'Hello from P1067';
dsply theCharVar;
callp localProc();
P391();
P784();
P8();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1067 in the procedure';
end-proc;