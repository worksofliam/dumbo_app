**free

ctl-opt dftactgrp(*no);

dcl-pi P1721;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1587.rpgleinc'
/copy 'qrpgleref/P847.rpgleinc'
/copy 'qrpgleref/P651.rpgleinc'

dcl-ds theTable extname('T936') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T936 LIMIT 1;

theCharVar = 'Hello from P1721';
dsply theCharVar;
callp localProc();
P1587();
P847();
P651();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1721 in the procedure';
end-proc;