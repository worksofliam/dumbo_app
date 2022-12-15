**free

ctl-opt dftactgrp(*no);

dcl-pi P3852;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2198.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'
/copy 'qrpgleref/P1418.rpgleinc'

dcl-ds theTable extname('T607') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T607 LIMIT 1;

theCharVar = 'Hello from P3852';
dsply theCharVar;
callp localProc();
P2198();
P638();
P1418();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3852 in the procedure';
end-proc;