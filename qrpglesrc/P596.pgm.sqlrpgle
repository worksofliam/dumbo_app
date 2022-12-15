**free

ctl-opt dftactgrp(*no);

dcl-pi P596;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P403.rpgleinc'
/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P572.rpgleinc'

dcl-ds theTable extname('T868') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T868 LIMIT 1;

theCharVar = 'Hello from P596';
dsply theCharVar;
callp localProc();
P403();
P310();
P572();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P596 in the procedure';
end-proc;