**free

ctl-opt dftactgrp(*no);

dcl-pi P2557;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2434.rpgleinc'
/copy 'qrpgleref/P1529.rpgleinc'
/copy 'qrpgleref/P374.rpgleinc'

dcl-ds T1873 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1873 FROM T1873 LIMIT 1;

theCharVar = 'Hello from P2557';
dsply theCharVar;
callp localProc();
P2434();
P1529();
P374();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2557 in the procedure';
end-proc;