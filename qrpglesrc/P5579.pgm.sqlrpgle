**free

ctl-opt dftactgrp(*no);

dcl-pi P5579;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1771.rpgleinc'
/copy 'qrpgleref/P1707.rpgleinc'
/copy 'qrpgleref/P2992.rpgleinc'

dcl-ds theTable extname('T761') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T761 LIMIT 1;

theCharVar = 'Hello from P5579';
dsply theCharVar;
callp localProc();
P1771();
P1707();
P2992();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5579 in the procedure';
end-proc;