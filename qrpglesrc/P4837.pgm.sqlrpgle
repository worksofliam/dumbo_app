**free

ctl-opt dftactgrp(*no);

dcl-pi P4837;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3451.rpgleinc'
/copy 'qrpgleref/P3942.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'

dcl-ds T1174 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1174 FROM T1174 LIMIT 1;

theCharVar = 'Hello from P4837';
dsply theCharVar;
callp localProc();
P3451();
P3942();
P697();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4837 in the procedure';
end-proc;