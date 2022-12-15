**free

ctl-opt dftactgrp(*no);

dcl-pi P4866;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2940.rpgleinc'
/copy 'qrpgleref/P4805.rpgleinc'
/copy 'qrpgleref/P2561.rpgleinc'

dcl-ds theTable extname('T528') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T528 LIMIT 1;

theCharVar = 'Hello from P4866';
dsply theCharVar;
callp localProc();
P2940();
P4805();
P2561();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4866 in the procedure';
end-proc;