**free

ctl-opt dftactgrp(*no);

dcl-pi P2416;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds theTable extname('T688') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T688 LIMIT 1;

theCharVar = 'Hello from P2416';
dsply theCharVar;
callp localProc();
P351();
P315();
P176();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2416 in the procedure';
end-proc;