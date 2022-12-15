**free

ctl-opt dftactgrp(*no);

dcl-pi P5525;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4810.rpgleinc'
/copy 'qrpgleref/P2054.rpgleinc'
/copy 'qrpgleref/P3668.rpgleinc'

dcl-ds theTable extname('T776') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T776 LIMIT 1;

theCharVar = 'Hello from P5525';
dsply theCharVar;
callp localProc();
P4810();
P2054();
P3668();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5525 in the procedure';
end-proc;