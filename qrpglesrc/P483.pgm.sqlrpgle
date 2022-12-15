**free

ctl-opt dftactgrp(*no);

dcl-pi P483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P431.rpgleinc'

dcl-ds theTable extname('T236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T236 LIMIT 1;

theCharVar = 'Hello from P483';
dsply theCharVar;
callp localProc();
P116();
P19();
P431();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P483 in the procedure';
end-proc;