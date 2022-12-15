**free

ctl-opt dftactgrp(*no);

dcl-pi P137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T220') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T220 LIMIT 1;

theCharVar = 'Hello from P137';
dsply theCharVar;
callp localProc();
P116();
P126();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P137 in the procedure';
end-proc;