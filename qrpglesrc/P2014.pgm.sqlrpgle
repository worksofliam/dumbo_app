**free

ctl-opt dftactgrp(*no);

dcl-pi P2014;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P662.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'

dcl-ds theTable extname('T695') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T695 LIMIT 1;

theCharVar = 'Hello from P2014';
dsply theCharVar;
callp localProc();
P55();
P662();
P195();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2014 in the procedure';
end-proc;