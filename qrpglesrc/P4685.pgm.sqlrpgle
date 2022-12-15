**free

ctl-opt dftactgrp(*no);

dcl-pi P4685;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P625.rpgleinc'
/copy 'qrpgleref/P979.rpgleinc'
/copy 'qrpgleref/P1023.rpgleinc'

dcl-ds T278 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T278 FROM T278 LIMIT 1;

theCharVar = 'Hello from P4685';
dsply theCharVar;
callp localProc();
P625();
P979();
P1023();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4685 in the procedure';
end-proc;