**free

ctl-opt dftactgrp(*no);

dcl-pi P4798;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1058.rpgleinc'
/copy 'qrpgleref/P4255.rpgleinc'
/copy 'qrpgleref/P2470.rpgleinc'

dcl-ds theTable extname('T812') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T812 LIMIT 1;

theCharVar = 'Hello from P4798';
dsply theCharVar;
callp localProc();
P1058();
P4255();
P2470();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4798 in the procedure';
end-proc;