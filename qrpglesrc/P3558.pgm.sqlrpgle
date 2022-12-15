**free

ctl-opt dftactgrp(*no);

dcl-pi P3558;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P1392.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds theTable extname('T769') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T769 LIMIT 1;

theCharVar = 'Hello from P3558';
dsply theCharVar;
callp localProc();
P449();
P1392();
P17();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3558 in the procedure';
end-proc;