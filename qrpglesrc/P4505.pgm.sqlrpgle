**free

ctl-opt dftactgrp(*no);

dcl-pi P4505;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P1082.rpgleinc'
/copy 'qrpgleref/P893.rpgleinc'

dcl-ds T731 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T731 FROM T731 LIMIT 1;

theCharVar = 'Hello from P4505';
dsply theCharVar;
callp localProc();
P200();
P1082();
P893();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4505 in the procedure';
end-proc;