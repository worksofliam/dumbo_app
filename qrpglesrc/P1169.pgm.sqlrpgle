**free

ctl-opt dftactgrp(*no);

dcl-pi P1169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'
/copy 'qrpgleref/P764.rpgleinc'

dcl-ds T368 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T368 FROM T368 LIMIT 1;

theCharVar = 'Hello from P1169';
dsply theCharVar;
callp localProc();
P85();
P504();
P764();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1169 in the procedure';
end-proc;