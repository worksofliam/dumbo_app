**free

ctl-opt dftactgrp(*no);

dcl-pi P2425;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'

dcl-ds theTable extname('T920') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T920 LIMIT 1;

theCharVar = 'Hello from P2425';
dsply theCharVar;
callp localProc();
P527();
P668();
P141();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2425 in the procedure';
end-proc;