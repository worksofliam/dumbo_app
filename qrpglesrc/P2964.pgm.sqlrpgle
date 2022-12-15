**free

ctl-opt dftactgrp(*no);

dcl-pi P2964;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2699.rpgleinc'
/copy 'qrpgleref/P1568.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'

dcl-ds theTable extname('T742') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T742 LIMIT 1;

theCharVar = 'Hello from P2964';
dsply theCharVar;
callp localProc();
P2699();
P1568();
P595();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2964 in the procedure';
end-proc;