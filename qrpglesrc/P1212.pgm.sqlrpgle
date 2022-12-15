**free

ctl-opt dftactgrp(*no);

dcl-pi P1212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P544.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'

dcl-ds T370 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T370 FROM T370 LIMIT 1;

theCharVar = 'Hello from P1212';
dsply theCharVar;
callp localProc();
P491();
P544();
P150();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1212 in the procedure';
end-proc;