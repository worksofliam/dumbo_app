**free

ctl-opt dftactgrp(*no);

dcl-pi P5408;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1795.rpgleinc'
/copy 'qrpgleref/P2726.rpgleinc'
/copy 'qrpgleref/P1080.rpgleinc'

dcl-ds theTable extname('T336') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T336 LIMIT 1;

theCharVar = 'Hello from P5408';
dsply theCharVar;
callp localProc();
P1795();
P2726();
P1080();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5408 in the procedure';
end-proc;