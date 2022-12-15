**free

ctl-opt dftactgrp(*no);

dcl-pi P1298;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P485.rpgleinc'
/copy 'qrpgleref/P1153.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'

dcl-ds T790 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T790 FROM T790 LIMIT 1;

theCharVar = 'Hello from P1298';
dsply theCharVar;
callp localProc();
P485();
P1153();
P264();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1298 in the procedure';
end-proc;