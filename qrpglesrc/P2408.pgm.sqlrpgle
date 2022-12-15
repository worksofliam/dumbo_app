**free

ctl-opt dftactgrp(*no);

dcl-pi P2408;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1206.rpgleinc'
/copy 'qrpgleref/P1286.rpgleinc'
/copy 'qrpgleref/P2229.rpgleinc'

dcl-ds theTable extname('T1072') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1072 LIMIT 1;

theCharVar = 'Hello from P2408';
dsply theCharVar;
callp localProc();
P1206();
P1286();
P2229();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2408 in the procedure';
end-proc;