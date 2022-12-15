**free

ctl-opt dftactgrp(*no);

dcl-pi P611;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds T144 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T144 FROM T144 LIMIT 1;

theCharVar = 'Hello from P611';
dsply theCharVar;
callp localProc();
P69();
P205();
P65();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P611 in the procedure';
end-proc;