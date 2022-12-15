**free

ctl-opt dftactgrp(*no);

dcl-pi P2859;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2034.rpgleinc'
/copy 'qrpgleref/P2417.rpgleinc'
/copy 'qrpgleref/P971.rpgleinc'

dcl-ds theTable extname('T322') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T322 LIMIT 1;

theCharVar = 'Hello from P2859';
dsply theCharVar;
callp localProc();
P2034();
P2417();
P971();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2859 in the procedure';
end-proc;