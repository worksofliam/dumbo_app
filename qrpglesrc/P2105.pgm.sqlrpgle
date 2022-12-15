**free

ctl-opt dftactgrp(*no);

dcl-pi P2105;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P452.rpgleinc'
/copy 'qrpgleref/P822.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'

dcl-ds theTable extname('T58') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T58 LIMIT 1;

theCharVar = 'Hello from P2105';
dsply theCharVar;
callp localProc();
P452();
P822();
P668();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2105 in the procedure';
end-proc;