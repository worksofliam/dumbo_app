**free

ctl-opt dftactgrp(*no);

dcl-pi P4949;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4764.rpgleinc'
/copy 'qrpgleref/P4291.rpgleinc'
/copy 'qrpgleref/P3882.rpgleinc'

dcl-ds T955 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T955 FROM T955 LIMIT 1;

theCharVar = 'Hello from P4949';
dsply theCharVar;
callp localProc();
P4764();
P4291();
P3882();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4949 in the procedure';
end-proc;