**free

ctl-opt dftactgrp(*no);

dcl-pi P4146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3459.rpgleinc'
/copy 'qrpgleref/P3056.rpgleinc'
/copy 'qrpgleref/P2311.rpgleinc'

dcl-ds theTable extname('T837') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T837 LIMIT 1;

theCharVar = 'Hello from P4146';
dsply theCharVar;
callp localProc();
P3459();
P3056();
P2311();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4146 in the procedure';
end-proc;