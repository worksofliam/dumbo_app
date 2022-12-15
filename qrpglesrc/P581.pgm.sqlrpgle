**free

ctl-opt dftactgrp(*no);

dcl-pi P581;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P384.rpgleinc'

dcl-ds T353 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T353 FROM T353 LIMIT 1;

theCharVar = 'Hello from P581';
dsply theCharVar;
callp localProc();
P295();
P199();
P384();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P581 in the procedure';
end-proc;