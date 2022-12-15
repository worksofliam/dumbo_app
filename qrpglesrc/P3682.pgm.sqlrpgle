**free

ctl-opt dftactgrp(*no);

dcl-pi P3682;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3185.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P1756.rpgleinc'

dcl-ds theTable extname('T740') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T740 LIMIT 1;

theCharVar = 'Hello from P3682';
dsply theCharVar;
callp localProc();
P3185();
P519();
P1756();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3682 in the procedure';
end-proc;