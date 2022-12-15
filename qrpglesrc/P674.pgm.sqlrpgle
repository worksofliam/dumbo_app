**free

ctl-opt dftactgrp(*no);

dcl-pi P674;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T116') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T116 LIMIT 1;

theCharVar = 'Hello from P674';
dsply theCharVar;
callp localProc();
P94();
P546();
P54();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P674 in the procedure';
end-proc;