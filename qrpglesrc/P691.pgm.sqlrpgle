**free

ctl-opt dftactgrp(*no);

dcl-pi P691;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P659.rpgleinc'

dcl-ds T1743 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1743 FROM T1743 LIMIT 1;

theCharVar = 'Hello from P691';
dsply theCharVar;
callp localProc();
P8();
P382();
P659();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P691 in the procedure';
end-proc;