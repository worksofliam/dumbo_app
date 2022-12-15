**free

ctl-opt dftactgrp(*no);

dcl-pi P1084;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P665.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'

dcl-ds T313 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T313 FROM T313 LIMIT 1;

theCharVar = 'Hello from P1084';
dsply theCharVar;
callp localProc();
P665();
P331();
P595();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1084 in the procedure';
end-proc;