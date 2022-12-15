**free

ctl-opt dftactgrp(*no);

dcl-pi P464;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds theTable extname('T419') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T419 LIMIT 1;

theCharVar = 'Hello from P464';
dsply theCharVar;
callp localProc();
P252();
P151();
P340();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P464 in the procedure';
end-proc;