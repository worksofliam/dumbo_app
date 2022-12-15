**free

ctl-opt dftactgrp(*no);

dcl-pi P324;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'

dcl-ds theTable extname('T248') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T248 LIMIT 1;

theCharVar = 'Hello from P324';
dsply theCharVar;
callp localProc();
P103();
P150();
P278();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P324 in the procedure';
end-proc;