**free

ctl-opt dftactgrp(*no);

dcl-pi P393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'

dcl-ds T207 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T207 FROM T207 LIMIT 1;

theCharVar = 'Hello from P393';
dsply theCharVar;
callp localProc();
P36();
P229();
P177();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P393 in the procedure';
end-proc;