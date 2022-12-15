**free

ctl-opt dftactgrp(*no);

dcl-pi P3976;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3644.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P1676.rpgleinc'

dcl-ds theTable extname('T580') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T580 LIMIT 1;

theCharVar = 'Hello from P3976';
dsply theCharVar;
callp localProc();
P3644();
P318();
P1676();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3976 in the procedure';
end-proc;