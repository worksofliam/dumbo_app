**free

ctl-opt dftactgrp(*no);

dcl-pi P599;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P555.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'

dcl-ds T952 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T952 FROM T952 LIMIT 1;

theCharVar = 'Hello from P599';
dsply theCharVar;
callp localProc();
P106();
P555();
P189();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P599 in the procedure';
end-proc;