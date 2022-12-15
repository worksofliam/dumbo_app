**free

ctl-opt dftactgrp(*no);

dcl-pi P1232;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P721.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'

dcl-ds theTable extname('T56') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T56 LIMIT 1;

theCharVar = 'Hello from P1232';
dsply theCharVar;
callp localProc();
P340();
P721();
P443();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1232 in the procedure';
end-proc;