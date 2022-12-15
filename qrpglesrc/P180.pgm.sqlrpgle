**free

ctl-opt dftactgrp(*no);

dcl-pi P180;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T58') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T58 LIMIT 1;

theCharVar = 'Hello from P180';
dsply theCharVar;
callp localProc();
P54();
P29();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P180 in the procedure';
end-proc;