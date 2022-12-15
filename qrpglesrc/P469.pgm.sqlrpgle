**free

ctl-opt dftactgrp(*no);

dcl-pi P469;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'

dcl-ds theTable extname('T1116') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1116 LIMIT 1;

theCharVar = 'Hello from P469';
dsply theCharVar;
callp localProc();
P349();
P427();
P278();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P469 in the procedure';
end-proc;