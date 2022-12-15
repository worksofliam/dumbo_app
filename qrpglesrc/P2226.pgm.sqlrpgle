**free

ctl-opt dftactgrp(*no);

dcl-pi P2226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P936.rpgleinc'
/copy 'qrpgleref/P1675.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'

dcl-ds theTable extname('T276') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T276 LIMIT 1;

theCharVar = 'Hello from P2226';
dsply theCharVar;
callp localProc();
P936();
P1675();
P858();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2226 in the procedure';
end-proc;