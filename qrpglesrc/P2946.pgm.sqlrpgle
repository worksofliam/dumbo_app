**free

ctl-opt dftactgrp(*no);

dcl-pi P2946;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2711.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P1085.rpgleinc'

dcl-ds theTable extname('T945') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T945 LIMIT 1;

theCharVar = 'Hello from P2946';
dsply theCharVar;
callp localProc();
P2711();
P208();
P1085();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2946 in the procedure';
end-proc;