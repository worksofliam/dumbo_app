**free

ctl-opt dftactgrp(*no);

dcl-pi P1256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'
/copy 'qrpgleref/P735.rpgleinc'

dcl-ds theTable extname('T419') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T419 LIMIT 1;

theCharVar = 'Hello from P1256';
dsply theCharVar;
callp localProc();
P650();
P668();
P735();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1256 in the procedure';
end-proc;