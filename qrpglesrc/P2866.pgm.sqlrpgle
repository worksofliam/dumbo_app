**free

ctl-opt dftactgrp(*no);

dcl-pi P2866;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2208.rpgleinc'
/copy 'qrpgleref/P817.rpgleinc'
/copy 'qrpgleref/P2569.rpgleinc'

dcl-ds theTable extname('T317') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T317 LIMIT 1;

theCharVar = 'Hello from P2866';
dsply theCharVar;
callp localProc();
P2208();
P817();
P2569();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2866 in the procedure';
end-proc;