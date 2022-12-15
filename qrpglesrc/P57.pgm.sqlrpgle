**free

ctl-opt dftactgrp(*no);

dcl-pi P57;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T162 LIMIT 1;

theCharVar = 'Hello from P57';
dsply theCharVar;
callp localProc();
P48();
P15();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P57 in the procedure';
end-proc;