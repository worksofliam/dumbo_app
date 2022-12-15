**free

ctl-opt dftactgrp(*no);

dcl-pi P659;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P588.rpgleinc'

dcl-ds theTable extname('T1098') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1098 LIMIT 1;

theCharVar = 'Hello from P659';
dsply theCharVar;
callp localProc();
P252();
P100();
P588();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P659 in the procedure';
end-proc;