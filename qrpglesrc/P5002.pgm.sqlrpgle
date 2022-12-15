**free

ctl-opt dftactgrp(*no);

dcl-pi P5002;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4006.rpgleinc'
/copy 'qrpgleref/P2721.rpgleinc'
/copy 'qrpgleref/P2388.rpgleinc'

dcl-ds theTable extname('T869') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T869 LIMIT 1;

theCharVar = 'Hello from P5002';
dsply theCharVar;
callp localProc();
P4006();
P2721();
P2388();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5002 in the procedure';
end-proc;