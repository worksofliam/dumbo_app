**free

ctl-opt dftactgrp(*no);

dcl-pi P5352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P3894.rpgleinc'
/copy 'qrpgleref/P2128.rpgleinc'

dcl-ds theTable extname('T1423') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1423 LIMIT 1;

theCharVar = 'Hello from P5352';
dsply theCharVar;
callp localProc();
P705();
P3894();
P2128();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5352 in the procedure';
end-proc;