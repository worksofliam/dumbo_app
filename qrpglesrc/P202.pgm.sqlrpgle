**free

ctl-opt dftactgrp(*no);

dcl-pi P202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'

dcl-ds theTable extname('T515') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T515 LIMIT 1;

theCharVar = 'Hello from P202';
dsply theCharVar;
callp localProc();
P189();
P39();
P174();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P202 in the procedure';
end-proc;